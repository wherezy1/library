package com.where.library.member.service.impl;

import com.alibaba.fastjson.TypeReference;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.common.constant.AuthConstant;
import com.where.library.common.constant.MemberConstant;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.common.utils.R;
import com.where.library.member.dao.*;
import com.where.library.member.dto.LoginDto;
import com.where.library.member.dto.UserDto;
import com.where.library.member.entity.RoleEntity;
import com.where.library.member.entity.UserEntity;
import com.where.library.member.entity.UserRoleRelationEntity;
import com.where.library.member.feign.BookAuthFeignService;
import com.where.library.member.feign.BookFeignService;
import com.where.library.member.interceptor.UserTokenInterceptor;
import com.where.library.member.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.stream.Collectors;


@Service("userService")
public class UserServiceImpl extends ServiceImpl<UserDao, UserEntity> implements UserService {
    @Autowired
    private BookFeignService bookFeignService;
    @Autowired
    private BookAuthFeignService authFeignService;
    @Autowired
    private UserRoleRelationDao userRoleRelationDao;
    @Autowired
    private RoleDao roleDao;
    @Autowired
    private StringRedisTemplate redisTemplate;
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private UserMajorDao majorDao;
    @Autowired
    private UserDepartmentDao departmentDao;
    @Autowired
    private DepartmentMajorRelationDao departmentMajorRelationDao;
    @Autowired
    private ThreadPoolExecutor executor;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<UserEntity> page = this.page(
                new Query<UserEntity>().getPage(params),
                new QueryWrapper<UserEntity>()
        );
        List<UserEntity> records = page.getRecords();
        records = records.stream().map(userEntity -> {
            return userEntity = this.baseMapper.getUserDetail(userEntity.getId());
        }).collect(Collectors.toList());
        page.setRecords(records);
        return new PageUtils(page);
    }

    @Override
    public R lendBookByIds(Long[] bookIds) {
        // 0、当前用户的id
        Long userId = UserTokenInterceptor.threadLocalUserId.get();
        // 1、查询remain
        UserEntity userEntity = this.baseMapper.selectById(userId);
        if (userEntity.getRemain() < bookIds.length) {
            return R.error("借书数量超出限制，请重新选择书籍！！");
        }
        // 2、如果够 远程调用feign
        Map<String, Object> param = new HashMap<>();
        param.put("userId", userId);
        param.put("bookId", bookIds);
        return bookFeignService.lendBookByIds(param);
    }

    @Override
    public R returnBookByIds(Long[] bookIds) {
        // 0、当前用户的id
        Long userId = UserTokenInterceptor.threadLocalUserId.get();
        // 1、查询remain
        UserEntity userEntity = this.baseMapper.selectById(userId);
        Integer remain = userEntity.getRemain();
        if (remain < bookIds.length) {
            return R.error("借书数量超出限制，请重新选择书籍！！");
        }
        // 2、如果够 远程调用feign
        Map<String, Object> param = new HashMap<>();
        param.put("userId", userId);
        param.put("bookId", bookIds);
        R returnBookByIds = bookFeignService.returnBookByIds(param);
        // 3、更新remain
        List<String> error = (List<String>) returnBookByIds.get("error");
        if (ObjectUtils.isEmpty(error)) {
            userEntity.setRemain(remain + bookIds.length);
            return R.ok();
        } else {
            userEntity.setRemain(remain + bookIds.length - error.size());
        }
        this.baseMapper.updateById(userEntity);
        return R.ok("还书成功！！");
    }

    @Override
    public R checkId(Long id) {
        UserEntity userEntity = this.baseMapper.selectOne(new QueryWrapper<UserEntity>().eq("id", id));
        if (ObjectUtils.isEmpty(userEntity)) {
            return R.ok().put("data", 0);
        }
        return R.ok().put("data", 1);
    }

    @Override
    public R checkUsername(String username) {
        UserEntity userEntity = this.baseMapper.selectOne(new QueryWrapper<UserEntity>().eq("username", username));
        if (ObjectUtils.isEmpty(userEntity)) {
            return R.ok().put("data", 0);
        } else
            return R.error().put("data", 1);
    }

    @Override
    public R checkPhone(String phone) {
        UserEntity userEntity = this.baseMapper.selectOne(new QueryWrapper<UserEntity>().eq("telephone", phone));
        // 为空表示不存在
        if (ObjectUtils.isEmpty(userEntity)) {
            return R.ok().put("data", 0);
        }
        // 1 表示存在
        return R.error().put("data", 1);
    }

    @Override
    public R login(LoginDto loginDto) {
        // 1、调用auth进行检查
        UserEntity userEntity = new UserEntity();
        BeanUtils.copyProperties(loginDto, userEntity);
        R login = authFeignService.login(userEntity);
        // 2、成功
        if (login.get("code") != null && login.get("code").equals(200)) {
            // 返回信息 添加userDto
            userEntity = this.baseMapper.selectOne(new QueryWrapper<UserEntity>().eq("username", userEntity.getUsername()));
            return  login.put("user", userEntity);
        } else {
            // 3、失败则返回失败信息
            UserTokenInterceptor.threadLocalToken.remove();
            UserTokenInterceptor.threadLocalUserId.remove();
            return R.error("登录失败");
        }
    }


    @Override
    public R register(UserDto userDto) {
        // 1、信息复制
        UserEntity userEntity = new UserEntity();
        BeanUtils.copyProperties(userDto, userEntity);
        userEntity.setRemain(20);
        // TODO 默认majorId部位空
        // 2、添加默认信息
        // 密码加密
        String password = new BCryptPasswordEncoder().encode(userDto.getPassword());
        userEntity.setPassword(password);
        String telephone = userDto.getTelephone();
        if (!StringUtils.isEmpty(telephone)) {
            R r = checkPhone(telephone);
            Integer data = r.getData(new TypeReference<Integer>() {});
            if (data == 1)
                return R.error("该电话号码已经注册");
        } else {
            return R.error("电话号码不能为空");
        }
        // 2、保存用户信息,
        int insert = this.baseMapper.insert(userEntity);
        if (insert == 0) {
            return R.error("注册失败，请稍后再试");
        }
        // 异步调用auth 获取token
        CompletableFuture<R> loginToken = CompletableFuture.supplyAsync(() -> {
            userEntity.setPassword(userDto.getPassword());
            System.out.println(insert);
            R login = authFeignService.login(userEntity);
            userEntity.setPassword(password);
            return login;
        }, executor);


        // 添加角色信息
        // 设置用户id
        Long userId = null;
        if (userEntity.getId() == null) {
            UserEntity select = this.baseMapper.selectOne(new QueryWrapper<UserEntity>().eq("username", userEntity.getUsername()));
            userId = select.getId();
        } else {
            userId = userEntity.getId();
        }
        UserRoleRelationEntity userRoleRelationEntity = new UserRoleRelationEntity();
        userRoleRelationEntity.setUserId(userId);

        // 角色id
        RoleEntity role = roleDao.selectOne(new QueryWrapper<RoleEntity>().eq("name", MemberConstant.DEFAULT_ROLE));
        userRoleRelationEntity.setRoleId(role.getId());
        userRoleRelationDao.insert(userRoleRelationEntity);
        // 3、获取token
        userEntity.setPassword(userDto.getPassword());

        // 4、设置token，返回信息
        // 5、设置用户信息
        R login = null;
        try {
            login = loginToken.get();
            if ((Integer)login.get("code") != 200) {
                throw new Exception((String) login.get("msg"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            return R.error("系统异常，请稍后再试");
        }
        return login.put("user", userEntity);
    }

    @Override
    public R logout() {
        Long userId = UserTokenInterceptor.threadLocalUserId.get();
//        redisTemplate.delete(AuthConstant.LOGIN_REDIS_KEY_PREFIX + userId);
//        request.getSession().setAttribute(AuthConstant.SESSION_REDIS_KEY, null);
//        return R.ok("退出成功！！");
//        R r = authFeignService.logout();
//        if (r.getCode() == 200) {
            UserTokenInterceptor.threadLocalUserId.remove();
            UserTokenInterceptor.threadLocalToken.remove();
//        }
        return R.ok("退出成功");
    }



    @Override
    public R changeMessage(UserDto userDto) {
        Long userId = UserTokenInterceptor.threadLocalUserId.get();
        UserEntity userEntity = new UserEntity();
        BeanUtils.copyProperties(userDto, userEntity);
        String telephone = userDto.getTelephone();
        if (!StringUtils.isEmpty(telephone)) {
            UserEntity telephoneCheck = this.baseMapper.selectOne(new QueryWrapper<UserEntity>().eq("telephone", telephone));
            if (!ObjectUtils.isEmpty(telephoneCheck) && telephoneCheck.getId() != userId)
                return R.error("该电话号码已经存在");
        }
        String username = userDto.getUsername();
        if (!StringUtils.isEmpty(username)) {
            UserEntity usernameCheck = this.baseMapper.selectOne(new QueryWrapper<UserEntity>().eq("username", username));
            if (!ObjectUtils.isEmpty(usernameCheck) && usernameCheck.getId() != userId)
                return R.error("该电话号码已经存在");
        }
        /*Long userId = userDto.getId();
        if (!ObjectUtils.isEmpty(userId)) {
            R r = checkId(userId);
            Integer data = r.getData(new TypeReference<Integer>() {});
            if (data == 1)
                return R.error("该电话号码已经注册");
        }*/
        // 4、通过用户id进行修改，只能单独修改用户id
        int count = this.baseMapper.update(userEntity, new QueryWrapper<UserEntity>().eq("id", userId));
        if (count > 0) {
            // 5、修改成功需要修改redis信息
            redisTemplate.delete(AuthConstant.LOGIN_REDIS_KEY_PREFIX + userDto.getId());
            // 6、修改session 信息
            request.getSession().setAttribute(AuthConstant.SESSION_REDIS_KEY, null);
            // 7、异步重新登录
            CompletableFuture.runAsync(() -> {
                R login = authFeignService.login(userEntity);
            });
            return R.ok("信息修改成功");
        }
        else
            return R.error("修改失败");
    }

    @Override
    public R getUserDetail() {
        Long userId = UserTokenInterceptor.threadLocalUserId.get();
        UserEntity userDetail = this.baseMapper.getUserDetail(userId);
        return R.ok().put("user", userDetail);
    }

    @Override
    public R changePassword(String oldPassword, String newPassword) {
        Long userId = UserTokenInterceptor.threadLocalUserId.get();
        UserEntity userEntity = new UserEntity();
        userEntity.setPassword(new BCryptPasswordEncoder().encode(newPassword));
        int id = this.baseMapper.update(userEntity, new QueryWrapper<UserEntity>().eq("id", userId));
        if (id > 0) return R.ok("修改成功");
        else return R.ok("发送未知错误，请稍后再试");
    }

    @Override
    public R checkPassword(String password) {
        Long userId = UserTokenInterceptor.threadLocalUserId.get();
        UserEntity userEntity = this.baseMapper.selectById(userId);
        boolean matches = new BCryptPasswordEncoder().matches(password, userEntity.getPassword());
        if (matches == true)
            return R.ok("密码正确");
        else {
            return R.error("密码错误");
        }
    }
}
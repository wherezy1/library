package com.where.library.auth.service.impl;

import com.alibaba.fastjson.JSON;
import com.where.library.auth.dto.LoginUserDto;
import com.where.library.auth.entity.UserEntity;
import com.where.library.auth.exception.ErrorCode;
import com.where.library.auth.service.LoginService;
import com.where.library.auth.utils.JwtUtil;
import com.where.library.common.dto.UserDetail;
import com.where.library.common.utils.R;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import com.where.library.common.constant.AuthConstant;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Objects;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/19:32
 * @Description:
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private HttpServletRequest request;

    /**
     * 借助SecurityContextHolder存储loginUser对象
     * SecurityContextHolder借助threadLocal保证了多线程有效，controller、service、filter数据一致
     *                      借助session保证用户连接时就能获取session数据，关闭时将数据存入session
     * @param user
     * @return
     */
    @Override
    public R login(UserEntity user) {
        // 1、第一次登录
        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(user.getUsername(), user.getPassword());
        // 认证authentication --> userService.loadUserByUsername()
        Authentication authenticate = authenticationManager.authenticate(authenticationToken);
        // 2、认证每通过
        if (Objects.isNull(authenticate)) {
            return R.error(ErrorCode.LOGIN_AUTHENTICATION_ERROR.getCode(),
                    ErrorCode.LOGIN_AUTHENTICATION_ERROR.getMessage());
//            throw new RuntimeException("登录失败");
        }
        // 3、认证成功 生成jwt 并存jwt到响应中
        LoginUserDto loginUser = (LoginUserDto) authenticate.getPrincipal();
        String userId = loginUser.getUserEntity().getId().toString();
        // jwt == uuid + userId + 签发者 + 签发时间 + 过期时间 + 加密算法--> builder
        String jwt = JwtUtil.createJWT(userId);
        HashMap<String, String> map = new HashMap<>();
        map.put("token", jwt);
        // 4、存入redis
        UserDetail userDetail = parseToUserDetail(loginUser);
        stringRedisTemplate.opsForValue().set(AuthConstant.LOGIN_REDIS_KEY_PREFIX + userId, JSON.toJSONString(userDetail), AuthConstant.LOGIN_REDIS_KEY_EXPRICE);

        // TODO 5、将token 设置到 spring session 中
//        request.getSession().setAttribute("token", jwt);

        // 6、返回token
        return R.ok("登录成功").put("token", jwt);
    }

    @Override
    public R logout() {
        UsernamePasswordAuthenticationToken authentication = (UsernamePasswordAuthenticationToken) SecurityContextHolder.getContext().getAuthentication();
        LoginUserDto loginUser = (LoginUserDto) authentication.getPrincipal();
        // 1、删除redis 信息 可以不删
//        stringRedisTemplate.delete(AuthConstant.LOGIN_REDIS_KEY_PREFIX + loginUser.getUserEntity().getId());
        // TODO 2、删除session信息
//        request.getSession().setAttribute(AuthConstant.SESSION_REDIS_KEY, null);
        return R.ok("注销成功");
    }

//    @Override
//    public R register(RegisterDto userDto) {
//        // 1、信息检查 + 信息复制
//        // 2、调用 book-member的register方法注册
//        UserDetail userDetail = new UserDetail();
//        BeanUtils.copyProperties(userDto, userDetail);
//
//    }

    public UserDetail parseToUserDetail(LoginUserDto loginUserDto) {
        UserDetail userDetail = new UserDetail();
        UserEntity userEntity = loginUserDto.getUserEntity();
        BeanUtils.copyProperties(userEntity, userDetail);
        userDetail.setPermissions(loginUserDto.getPermissions());
        return userDetail;
    }
}

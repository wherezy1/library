package com.where.library.auth.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.where.library.auth.dto.LoginUserDto;
import com.where.library.auth.entity.UserEntity;
import com.where.library.auth.dao.UserDao;
import com.where.library.auth.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/10:40
 * @Description: 通过继承UserDetail类，实现loadUserByUsername()方法，
 *              向authenticate中封装userDetail对象和信息
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userMapper;

    /**
     * 被验证时 调用的方法
     * 用于查询用户 和 权限
     * @param username
     * @return
     * @throws UsernameNotFoundException
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // 查询用户信息
        UserEntity user = userMapper.selectOne(new QueryWrapper<UserEntity>().eq("username", username).eq("status", 0));
        // 没有此用户抛出异常 UsernameNotFoundException
        System.out.println(user);
        if (Objects.isNull(user)) {
            throw new RuntimeException("用户尚未注册或用户名错误");
        }
        // 查询权限信息
        List<String> permissions = userMapper.selectPermsByUserId(user.getId());
        // 封装程UserDetails返回
        return new LoginUserDto(user, permissions);
    }
}

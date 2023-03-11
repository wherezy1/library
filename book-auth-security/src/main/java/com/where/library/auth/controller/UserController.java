package com.where.library.auth.controller;


import com.where.library.auth.entity.UserEntity;
import com.where.library.auth.service.LoginService;
import com.where.library.common.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/19:22
 * @Description:
 */
@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private LoginService loginService;

    @PostMapping("/login")
    public R login(@RequestBody UserEntity user) {
        return loginService.login(user);
    }

    @RequestMapping("/logout")
    public R logout() {
        return loginService.logout();
    }

//    @PostMapping("/register")
//    public R register(@RequestBody RegisterDto userDto) {
//        return loginService.register(userDto);
//    }
}

/**
 * /oauth/authorize ： 授权端点
 * /auth/token ： 令牌端点
 * /oauth/confirm_access ：用户确认授权提交的端点
 * /oauth/error : 授权服务错误信息端点。
 * /oauth/check_token ：用于资源服务访问的令牌进行解析的端点。
 * /oauth/token_key ： 使用Jwt令牌需要用到的提供公有密钥的端点。
 */

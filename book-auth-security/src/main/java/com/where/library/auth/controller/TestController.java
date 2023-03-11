package com.where.library.auth.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/21:28
 * @Description:
 */
@RestController
@RequestMapping("/test")
public class TestController {

    @GetMapping
    @ResponseBody
    // 自定义(ex)bean.hasAuthority 方法
    @PreAuthorize("@ex.hasAuthority('sys:book:delete')")
    // 系统自带hasAuthority 方法
    // @PreAuthorize("hasAuthority('system:dept:list')")
    public String hello() {
        return "hello world";
    }
}

package com.where.library.member.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/27/19:55
 * @Description: 访问是带上设置的cookie域名访问
 */
@RestController
@RequestMapping("/test")
public class TestSessionController {

    @GetMapping("/set")
    void springSession(HttpServletRequest request) {
        request.getSession().setAttribute("token", "eriqworpejiqrew");
    }

    @GetMapping("/get")
    void getSpringSession(HttpServletRequest request) {
        String token = (String) request.getSession().getAttribute("token");
        System.out.println(token);
    }
}


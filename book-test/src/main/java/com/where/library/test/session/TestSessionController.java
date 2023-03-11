package com.where.library.test.session;

import com.netflix.ribbon.proxy.annotation.Http;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/27/19:29
 * @Description:
 */
@RestController
@RequestMapping("/test")
public class TestSessionController {

    @GetMapping("/set")
    void springSession(HttpSession session) {
        session.setAttribute("token", "eriqworpejiqrew");
    }

    @GetMapping("/get")
    void getSpringSession(HttpSession session) {
        String token = (String) session.getAttribute("token");
        System.out.println(token);
    }
}

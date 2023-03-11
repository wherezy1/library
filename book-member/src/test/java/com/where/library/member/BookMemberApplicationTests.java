package com.where.library.member;

import com.where.library.common.utils.R;
import com.where.library.member.dao.UserDao;
import com.where.library.member.dto.LoginDto;
import com.where.library.member.entity.UserEntity;
import com.where.library.member.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.servlet.http.HttpSession;

@SpringBootTest
class BookMemberApplicationTests {
    @Autowired
    private UserDao userDao;
    @Autowired
    HttpSession session;
    @Autowired
    private UserService userService;

    @Test
    void contextLoads() {
        UserEntity userEntity = userDao.selectById(1);
        System.out.println(new BCryptPasswordEncoder().matches("123456", userEntity.getPassword()));
        System.out.println(userEntity);
    }

    @Test
    void springSession() {
        session.setAttribute("token", "eriqworpejiqrew");
        String token = (String) session.getAttribute("token");
        System.out.println(token);
    }

    @Test
    void login() {
        R admin = userService.login(new LoginDto("admin", "123456"));
    }
}

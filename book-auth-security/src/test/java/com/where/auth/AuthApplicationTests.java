package com.where.auth;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.where.library.auth.AuthApplication;
import com.where.library.auth.dao.UserDao;
import com.where.library.auth.entity.UserEntity;
import com.where.library.auth.utils.JwtUtil;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.util.Base64;

@SpringBootTest(classes = AuthApplication.class)
class AuthApplicationTests {
    @Autowired
    private StringRedisTemplate redisTemplate;

    @Test
    void contextLoads() {
        UserEntity userEntity = new UserEntity();
        userEntity.setId(Long.valueOf(2));
        userEntity.setUsername("amdin");
        String s = JSON.toJSONString(userEntity);
        redisTemplate.opsForValue().set("test2", s, 100);
        String test = redisTemplate.opsForValue().get("test2");

        UserEntity userEntity1 = JSON.parseObject(s, UserEntity.class);
        System.out.println(userEntity1);
        System.out.println(test);
    }

    @Test
    public void generalKey() {
        byte[] encodedKeys = Base64.getDecoder().decode(JwtUtil.JWT_KEY);
        System.out.println(encodedKeys.length);
        for (byte encodedKey : encodedKeys) {
            System.out.println(encodedKey);
        }
        SecretKey key = new SecretKeySpec(encodedKeys, 0, encodedKeys.length, "AES");
//        return key;
    }

    @Autowired
    private UserDao userMapper;

    @Test
    void mybatis() {
        UserEntity user = userMapper.selectOne(new QueryWrapper<UserEntity>().eq("username", "admin"));
        System.out.println(new BCryptPasswordEncoder().matches("123456", user.getPassword()));
    }

    @Test
    void redis() {
        UserEntity user = userMapper.selectOne(new QueryWrapper<UserEntity>().eq("username", "admin"));
        redisTemplate.opsForValue().set("test", JSON.toJSONString(user));
        String s = redisTemplate.opsForValue().get("test");
        System.out.println(s);
    }
}

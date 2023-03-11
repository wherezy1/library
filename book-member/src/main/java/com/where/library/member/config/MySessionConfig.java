package com.where.library.member.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;
import org.springframework.session.web.http.CookieSerializer;
import org.springframework.session.web.http.DefaultCookieSerializer;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/27/16:47
 * @Description: 配置 spring session
 */
@EnableRedisHttpSession
@Configuration
public class MySessionConfig {
    /**
     * 设置cookie的作用域，和名字
     * 便于取cookie的数据 和 sso（单点登录 SingleSignOn）
     * jsessionid
     * @return
     */
    @Bean
    public CookieSerializer cookieSerializer() {
        DefaultCookieSerializer cookieSerializer = new DefaultCookieSerializer();
        cookieSerializer.setDomainName("library.com");
        cookieSerializer.setCookieName("librarySession");
        return cookieSerializer;
    }

    /*方法名必须为 springSessionDefaultRedisSerializer 便于spring session调用方法*/
    @Bean
    public RedisSerializer<Object> springSessionDefaultRedisSerializer() {
        return new GenericJackson2JsonRedisSerializer();
    }
}

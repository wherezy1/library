package com.where.library.common.constant;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/20:55
 * @Description:
 */
public class AuthConstant {
    // auth-redis用户存用户信息的
    public final static String LOGIN_REDIS_KEY_PREFIX = "login:";
    public final static long LOGIN_REDIS_KEY_EXPRICE = 60 * 60 * 24;

    public final static String SESSION_REDIS_KEY = "loginUser";
}

package com.where.library.auth.exception;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/19:49
 * @Description:
 */
public enum ErrorCode {
    LOGIN_AUTHENTICATION_ERROR(10001, "用户验证失败"),
    AUTHORIZATION_ERROR(10002, "权限不足，授权失败");

    private Integer code;
    private String message;
    ErrorCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}

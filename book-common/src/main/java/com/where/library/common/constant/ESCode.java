package com.where.library.common.constant;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/24/16:28
 * @Description:
 */
public enum ESCode {
    ES_SAVE_SUCCESS_CODE(100200, "书籍上架成功"),
    ES_SAVE_ERROR_CODE(100100, "上架失败");

    int code;
    String message;
    ESCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public String getMessage() {
        return message;
    }

    public int getCode() {
        return code;
    }
}

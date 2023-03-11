package com.where.library.auth.exception;

import com.alibaba.fastjson.JSON;
import com.where.library.auth.dto.ResponseDto;
import com.where.library.auth.utils.WebUtils;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/15:34
 * @Description: 自定义授权异常处理
 */
@Component
public class MyAccessDeniedHandler implements AccessDeniedHandler {
    @Override
    public void handle(HttpServletRequest httpServletRequest, HttpServletResponse response, AccessDeniedException e) throws IOException, ServletException {
        ResponseDto responseDto = new ResponseDto(ErrorCode.AUTHORIZATION_ERROR.getCode(),
                ErrorCode.AUTHORIZATION_ERROR.getMessage() + " 异常：" + e.getMessage());
        WebUtils.renderString(response, JSON.toJSONString(responseDto));
    }
}

package com.where.library.auth.exception;

import com.alibaba.fastjson.JSON;
import com.where.library.auth.dto.ResponseDto;
import com.where.library.auth.utils.WebUtils;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/15:35
 * @Description: 认证异常处理器
 */
@Component
public class MyAuthenticationEntryPointHandler implements AuthenticationEntryPoint {
    /**
     * ExceptionTranslationFilter调用
     * 当访问未纳入Oauth2保护资源或者访问授权端点时客户端验证失败，抛出异常，AuthenticationEntryPoint. Commence(..)就会被调用
     * @param request
     * @param response
     * @param e
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException e) throws IOException, ServletException {
        ResponseDto responseDto = new ResponseDto(ErrorCode.LOGIN_AUTHENTICATION_ERROR.getCode(),
                ErrorCode.LOGIN_AUTHENTICATION_ERROR .getMessage() + " 异常：" + e.getMessage());
        WebUtils.renderString(response, JSON.toJSONString(responseDto));
    }
}

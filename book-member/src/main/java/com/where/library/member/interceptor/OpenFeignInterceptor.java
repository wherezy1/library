package com.where.library.member.interceptor;

import feign.RequestInterceptor;
import feign.RequestTemplate;
import org.apache.commons.lang.StringUtils;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/12/01/8:53
 * @Description: 远程调用openfeign时，防止头信息丢失
 */
public class OpenFeignInterceptor implements RequestInterceptor {

    @Override
    public void apply(RequestTemplate requestTemplate) {
        String token = UserTokenInterceptor.threadLocalToken.get();
        System.out.println("OpenFeignInterceptor::" + token);
        if (!StringUtils.isEmpty(token)) {
            requestTemplate.header("token", token);
        }
    }
}

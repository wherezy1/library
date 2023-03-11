package com.where.library.member.feign;

import com.where.library.common.utils.R;
import com.where.library.member.entity.UserEntity;
import com.where.library.member.interceptor.OpenFeignInterceptor;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/29/14:37
 * @Description:
 */
@FeignClient(value = "book-auth", configuration = OpenFeignInterceptor.class)
public interface BookAuthFeignService {
    @PostMapping("/user/login")
    R login(@RequestBody UserEntity user);

    @RequestMapping("/user/logout")
    R logout();
}

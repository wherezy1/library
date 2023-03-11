package com.where.library.auth.filter;

import com.alibaba.fastjson.JSON;
import com.where.library.auth.dto.LoginUserDto;
import com.where.library.auth.entity.UserEntity;
import com.where.library.common.constant.AuthConstant;
import com.where.library.common.dto.UserDetail;
import com.where.library.common.utils.JwtUtil;
import io.jsonwebtoken.Claims;
import io.netty.util.internal.StringUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/15:49
 * @Description: 身份验证过滤器
 * 从除redis中去LoginUser信息存入SecurityContextHolder
 * 在spring security中被 UsernamePasswordAuthenticationFilter 调用
 */
@Component
public class JwtAuthenticationTokenFilter extends OncePerRequestFilter {
    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        // 1、检查是否有toke
        String token = request.getHeader("token");
        System.out.println(token);
        // 2、没有直接放行
        if (StringUtil.isNullOrEmpty(token)) {
            filterChain.doFilter(request, response);
        } else {
            // 3、有就解析token，
            String userId = null;
            try {
                Claims claims = JwtUtil.parseJWT(token);
                userId = claims.getSubject();
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("token非法");
            }
            // 4、从redis中获取用户
            String s = stringRedisTemplate.opsForValue().get(AuthConstant.LOGIN_REDIS_KEY_PREFIX + userId);
            UserDetail userDetail = JSON.parseObject(s, UserDetail.class);
            LoginUserDto loginUser = parseToLoginUserDto(userDetail);
            if (Objects.isNull(loginUser)) {
                throw new RuntimeException("用户未登录或者登录已过期");
            }
            // 5、将用户存入SecurityContextHolder
            UsernamePasswordAuthenticationToken authenticationToken =
                    new UsernamePasswordAuthenticationToken(loginUser, null, loginUser.getAuthorities());
            SecurityContextHolder.getContext().setAuthentication(authenticationToken);
            // 放行
            filterChain.doFilter(request, response);
        }
    }

    /**
     * 将redis中取出的UserDetail 转为 LoginUserDto
     * @param userDetail
     * @return
     */
    LoginUserDto parseToLoginUserDto(UserDetail userDetail) {
        LoginUserDto loginUserDto = new LoginUserDto();
        UserEntity userEntity = new UserEntity();
        BeanUtils.copyProperties(userDetail, userEntity);
        loginUserDto.setUserEntity(userEntity);
        loginUserDto.setPermissions(userDetail.getPermissions());
        return loginUserDto;
    }
}

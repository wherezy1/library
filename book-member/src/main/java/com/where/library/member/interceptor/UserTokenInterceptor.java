package com.where.library.member.interceptor;

import com.where.library.common.utils.JwtUtil;
import io.jsonwebtoken.Claims;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/27/20:37
 * @Description: 截取用户的token，将用户信息封装到threadLocal
 * 要求 ： 必须是通过设置的域名来访问，设置session ，然后取出session ---
 *
 */
@Component
public class UserTokenInterceptor implements HandlerInterceptor {
    // 存当前用户的token
    public static ThreadLocal<String> threadLocalToken = new ThreadLocal<>();
    // 存当前用户id
    public static ThreadLocal<Long> threadLocalUserId = new ThreadLocal<>();
    /**
     *
     * String nethod = request.getMethod();//获取请求方式:
     * final String contextPath = request.getContextPath();//获取项目名
     * String servletPath = request.getServletPath();//获取网名 也就是/login
     * String requestURI = request.getRequestURI();//获取访问路径: 项目名+servlet
     * StringBuffer requestURL = request.getRequestURL();// 获取完整路径:
//     获取session中的token，解析userId，
     用户请求头中携带token
     如果没有携带，就转向auth/login登录验证
     得到token则允许访问

     可以根据userId获取用户信息
     */

    List<String> whitePath = new ArrayList<>();
    {
        whitePath.add("/member/user/login");
//        whitePath.add("/member/user/logout");
        whitePath.add("/member/user/register");
        whitePath.add("/member/user/check/username");
        whitePath.add("/member/user/check/phone");
//        whitePath.add("/member/user/check/{id}");
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String path = request.getServletPath();
        System.out.println(path);
        // 1、白名单放行
        if (path != null && whitePath.contains(path)) {
            return HandlerInterceptor.super.preHandle(request, response, handler);
        }
        // 保存token
        String token = request.getHeader("token");
        System.out.println("UserTokenInterceptor::" + token);
        // 2、如果没有token，且不属于白名单，拦截
        if (StringUtils.isEmpty(token)) {
            return false;
        }
        threadLocalToken.set(token);
        String s = threadLocalToken.get();
        System.out.println("threadLocalToken:" + s);
        Claims claims = JwtUtil.parseJWT(token);
        // 1、获取存入的用户id
        String userId = claims.getSubject();
        threadLocalUserId.set(Long.parseLong(userId));
        // 2、从redis中取出用户的详细信息
//        redisTemplate == null
//        String s = redisTemplate.opsForValue().get(AuthConstant.LOGIN_REDIS_KEY_PREFIX + userId);
//        UserDetail userDetail = JSON.parseObject(s, UserDetail.class);
//        threadLocal.set(userDetail);
        return HandlerInterceptor.super.preHandle(request, response, handler);
    }
}


/*

/**
 * 在执行目标方法之前，判断用户的登录状态。并封装传递(用户信息)给controller
 */
/*
public class CartInterceptor implements HandlerInterceptor {

    public static ThreadLocal<UserInfoTo> threadLocal = new ThreadLocal<>();
*/
    /**
     * 目标方法执行之前
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws java.lang.Exception
     */
/*
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object handler) throws Exception {
        UserInfoTo userInfoTo = new UserInfoTo();

        HttpSession session = request.getSession();
        MemberRespVo member = (MemberRespVo) session.getAttribute(AuthServerConstant.LOGIN_USER);
        if(member != null){
            //用户登录
            userInfoTo.setUserId(member.getId());
        }

        Cookie[] cookies = request.getCookies();
        if(cookies!=null && cookies.length>0){
            for (Cookie cookie : cookies) {
                //user-key
                String name = cookie.getName();
                if(name.equals(CartConstant.TEMP_USER_COOKIE_NAME)){
                    userInfoTo.setUserKey(cookie.getValue());
                    userInfoTo.setTempUser(true);
                }
            }
        }

        //如果没有临时用户一定分配一个临时用户
        if(StringUtils.isEmpty(userInfoTo.getUserKey())){
            String uuid = UUID.randomUUID().toString();
            userInfoTo.setUserKey(uuid);
        }
        //目标方法执行之前
        threadLocal.set(userInfoTo);
        return true;
    }
*/
    /**
     * 业务执行之后；分配临时用户，让浏览器保存
     * @param request
     * @param response
     * @param handler
     * @param modelAndView
     * @throws java.lang.Exception
     */
/*
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

        UserInfoTo userInfoTo = threadLocal.get();

        //如果没有临时用户一定保存一个临时用户
        if(!userInfoTo.isTempUser()){
            //持续的延长临时用户的过期时间
            Cookie cookie = new Cookie(CartConstant.TEMP_USER_COOKIE_NAME, userInfoTo.getUserKey());
            cookie.setDomain("gulimall.com");
            cookie.setMaxAge(CartConstant.TEMP_USER_COOKIE_TIMEOUT);
            response.addCookie(cookie);
        }


    }
}
 */

package com.where.library.auth.interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/15:47
 * @Description: authorization授权拦截器
 * 被 FilterSecurityInterceptor调用
 */
@Component
public class AuthorizationInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        return HandlerInterceptor.super.preHandle(request, response, handler);
    }

    /*@Resource
    private UserServiceImpl userService;//没错，interceptor中是可以注入其它bean的

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
       //用request获取HttpSession，我用的是springSession，信息都保存在session中。
        HttpSession session=request.getSession();//注意。不能在方法里面加入session，要不然和父类的方法不一致了
        log.info("preHandle");
        //把handler强转为Methodhandler
        HandlerMethod handlerMethod=(HandlerMethod)handler;
        //获取拦截到的是哪一个类名和方法名
        String methodName=handlerMethod.getMethod().getName();
        String className=handlerMethod.getBean().getClass().getSimpleName();
        //...................................
        //用iterator遍历出来request中的ParameterMap
        Map requestMap=request.getParameterMap();
        Iterator it=requestMap.entrySet().iterator();
        StringBuffer stringBuffer=new StringBuffer();
        //show requestParamMap
        while (it.hasNext()){
            String value=StringUtils.EMPTY;
            Map.Entry entry=(Map.Entry) it.next();
            String key=(String) entry.getKey();
            if (entry.getValue() instanceof String[]){
                value= Arrays.toString((String[])entry.getValue());
            }else {
                value=(String)entry.getValue();
            }
            stringBuffer.append(key).append("=").append(value);
        }
        User user=(User) session.getAttribute(Const.CURRENT_USER);
        if (user==null||(user.getRole()!=Const.Role.ROLE_ADMIN)) {
            //。。。。。。。。。。。。。。。。。。。。
            //要在interceptor里面返回出来json，就得做一下response的配置,要写在不成功的条件里面，不能既手动调用又程序调用，否则会报异常
            response.reset();//重置response 要不然会报错
            response.setCharacterEncoding("UTF-8");
            response.setContentType("application/json;charset=UTF-8");//说明要返回json
            PrintWriter writer=response.getWriter();
            //end。。。。。。。。。。。。。。。。。。。。。。。。。。。
            if (user == null) {
                //要把类变为jsonString，print出来才显示正常的值，直接print一个对象。只会显示该对象的类名和它的id
                writer.println(JsonUtil.object2String(ServerResponse.error("亲还没有登录呢")));
            } else {
                writer.println(JsonUtil.object2String(ServerResponse.error("没有管理员权限")));
            }
            writer.flush();//清空print中的值
            writer.close();//关闭它
            return false;//既然验证失败就不让这次请求放到controller中了
        }
        return true;//验证通过那么就放行到controller中继续执行业务逻辑

    }
    * */

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
    }
}

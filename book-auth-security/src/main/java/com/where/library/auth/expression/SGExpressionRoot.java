package com.where.library.auth.expression;

import com.where.library.auth.dto.LoginUserDto;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/21:34
 * @Description: @PreAuthorize注解的判断方法 方法权限验证
 * 注解方法全都时调用 SecurityExpressionRoot下的方法
 * @PreAuthorize --> SecurityExpressionRoot.hasAuthority()
 *                      hasAnyAuthority，hasRole，hasAnyRole等等方法都是该类下的方法
 * @PreAuthorize --适合进入方法之前验证授权
 *
 * @PostAuthorize --检查授权方法之后才被执行
 *
 * @PostFilter --在方法执行之后执行，而且这里可以调用方法的返回值，然后对返回值进行过滤或处理或修改并返回
 *
 * @PreFilter --在方法执行之前执行，而且这里可以调用方法的参数，然后对参数值进行过滤或处理或修改
 */
@Component("ex")
public class SGExpressionRoot {
    public boolean hasAuthority(String authority) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        LoginUserDto loginUser = (LoginUserDto) authentication.getPrincipal();
        List<String> permissions = loginUser.getPermissions();
        // 判断用户权限集合是否存在authority
        return permissions.contains(authority);
    }
}

package com.where.library.auth.dto;

import com.where.library.auth.entity.UserEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.lang.StringUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/15:02
 * @Description: 登录用户的信息保存 和 用于spring security的UserDetails信息封装
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginUserDto implements UserDetails {
    // 用户信息
    private UserEntity userEntity;
    // 用户权限 以 ‘:’ 进行分割的 system:dept:list
    private List<String> permissions;

    public LoginUserDto(UserEntity user, List<String> permissions) {
        this.userEntity = user;
        this.permissions = permissions;
    }

    // 用户 和 spring security 之间的 权限关系传递
    List<SimpleGrantedAuthority> authorities;
    /**
     * 将permissions 转为 SimpleGrantedAuthority
     * @return
     */
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        authorities = permissions.stream()
                .filter(permission -> StringUtils.isEmpty(permission))
                .map(permission -> {
                    // SimpleGrantedAuthority的构造函数不能为空
                    if (!StringUtils.isEmpty(permission)) {
                        return new SimpleGrantedAuthority(permission);
                    }
                    return null;
                })
                .collect(Collectors.toList());
        return authorities;
    }

    @Override
    public String getPassword() {
        return userEntity.getPassword();
    }

    @Override
    public String getUsername() {
        return userEntity.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

}

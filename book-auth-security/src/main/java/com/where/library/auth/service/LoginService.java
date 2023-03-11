package com.where.library.auth.service;

import com.where.library.auth.entity.UserEntity;
import com.where.library.common.utils.R;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/19:29
 * @Description:
 */
public interface LoginService {
    R  login(UserEntity user);

    R logout();

    /**
     * 注册账号
     * @param userDto
     * @return
     */
//    R register(RegisterDto userDto);
}

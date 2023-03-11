package com.where.library.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.dto.LoginDto;
import com.where.library.member.dto.UserDto;
import com.where.library.member.entity.UserEntity;

import java.util.Map;

/**
 * 借阅人信息
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-27 14:47:14
 */
public interface UserService extends IService<UserEntity> {

    PageUtils queryPage(Map<String, Object> params);

    /**
     * 通过书籍 ids借书
     * @param bookIds
     * @return
     */
    R lendBookByIds(Long[] bookIds);

    /**
     * 通过书籍ids还书
     * @param bookIds
     * @return
     */
    R returnBookByIds(Long[] bookIds);

    /**
     * 检查用户id
     * @param id
     * @return
     */
    R checkId(Long id);

    /**
     * 检查用户名
     * @param username
     * @return
     */
    R checkUsername(String username);

    /**
     * 检查手机号是否唯一
     * @param phone
     * @return
     */
    R checkPhone(String phone);

    /**
     * 登录
     * @param loginDto
     * @return
     */
    R login(LoginDto loginDto);

    /**
     * 接收注册信息
     * @param userDto
     * @return
     */
    R register(UserDto userDto);

    /**
     * 登出 、 删除redis、session信息
     * @return
     */
    R logout();

    /**
     * 修改个人信息
     * @param userDto
     * @return
     */
    R changeMessage(UserDto userDto);

    /**
     * 获取用户详情信息
     * @return
     */
    R getUserDetail();

    /**
     * 通过旧密码修改密码
     * @return
     */
    R changePassword(String oldPassword, String newPassword);

    /**
     * 检查密码
     * @return
     */
    R checkPassword(String password);
}


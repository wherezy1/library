package com.where.library.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/28/21:10
 * @Description:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {
    /**
     * 用户id
     */
    private Long id;
    /**
     * 用户名
     */
    @NotNull
    private String username;
    /**
     * 密码
     */
    @NotNull
    private String password;
    /**
     * 确认密码
     */
    @NotNull
    private String confirmPassword;
    /**
     * 学院id
     */
    private Long departmentId;
    /**
     * 学院
     */
    private String department;
    /**
     * 专业id
     */
    private Long majorId;
    /**
     * 专业
     */
    private String major;
    /**
     */
    private Integer classNumber;
    /**
     * 性别 男/女
     */
    private String sex;
    /**
     * 手机号
     */
    @NotNull
    private String telephone;
    /**
     * 剩余可以借书籍数量
     */
//    private Integer remain;
}

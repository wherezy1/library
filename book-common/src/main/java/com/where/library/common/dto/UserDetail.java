package com.where.library.common.dto;


import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 保存用户详细信息
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDetail {
    /**
     * 用户id
     */
    private Long id;
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
    private String password;
    /**
     * 专业id
     */
    private Long majorId;
    /**
     * 班级
     */
    private Integer classNumber;
    /**
     * 性别
     */
    private String sex;
    /**
     * 手机号
     */
    private String telephone;
    /**
     * 剩余可以借书籍数量
     */
    private Integer remain;
    /**
     * 权限
     */
    private List<String> permissions;
}
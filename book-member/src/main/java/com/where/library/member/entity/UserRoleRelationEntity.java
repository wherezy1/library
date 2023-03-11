package com.where.library.member.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 用户角色表
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-27 14:47:14
 */
@Data
@TableName("ums_user_role_relation")
public class UserRoleRelationEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 用户id
	 */
	private Long userId;
	/**
	 * 角色id
	 */
	private Long roleId;

}

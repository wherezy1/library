package com.where.library.member.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-12-08 19:43:59
 */
@Data
@TableName("ums_permission")
public class PermissionEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 权限id
	 */
	@TableId(type = IdType.AUTO)
	private Long id;
	/**
	 * 权限
	 */
	private String permission;
	/**
	 * 权限状态 （0：正常 1停用）
	 */
	private Integer status = 0;
}

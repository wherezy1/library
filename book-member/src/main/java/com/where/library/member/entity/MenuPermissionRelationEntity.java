package com.where.library.member.entity;

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
@TableName("ums_menu_permission_relation")
public class MenuPermissionRelationEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 菜单id
	 */
	private Long menuId;
	/**
	 * 权限id
	 */
	private Long permissionId;

}

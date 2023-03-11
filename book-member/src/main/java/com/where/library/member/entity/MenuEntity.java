package com.where.library.member.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 权限表
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-12-08 19:43:59
 */
@Data
@TableName("ums_menu")
public class MenuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 权限id
	 */
	@TableId(type = IdType.AUTO)
	private Long id;
	/**
	 * 菜单名
	 */
	private String menuName;
	/**
	 * 权限
	 */
	private Integer grade;
	/**
	 * 是否启用（0正常， 1停用）
	 */
	private Integer status = 0;
	/**
	 *  菜单等级
	 */
	private Long parentId;

}

package com.where.library.member.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * `bms_department`
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 21:25:51
 */
@Data
@TableName("ums_user_department")
public class UserDepartmentEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 院系id
	 */
	@TableId(type = IdType.AUTO)
	private Long id;
	/**
	 * 院系
	 */
	private String department;
	/**
	 * 描述信息
	 */
	@TableField("`describe`")
	private String describe;
	/**
	 * 状态： 0 正常 1：停用
	 */
	private Integer status = 0;
}

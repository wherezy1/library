package com.where.library.member.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * `bms_major`
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 21:25:51
 */
@Data
@TableName("ums_user_major")
public class UserMajorEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 专业id
	 */
	@TableId(type = IdType.AUTO)
	private Long id;
	/**
	 * 专业
	 */
	private String major;
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

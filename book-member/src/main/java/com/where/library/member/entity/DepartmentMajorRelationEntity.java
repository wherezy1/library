package com.where.library.member.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * `bms_department_major_relation`
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 21:34:12
 */
@Data
@TableName("ums_department_major_relation")
public class DepartmentMajorRelationEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	private Long departmentId;
	/**
	 * 
	 */
	private Long majorId;

}

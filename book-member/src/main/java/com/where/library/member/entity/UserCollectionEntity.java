package com.where.library.member.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 用户书籍收藏表
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 17:18:42
 */
@Data
@TableName("ums_user_collection")
public class UserCollectionEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 用户id
	 */
	private Long userId;
	/**
	 * 书籍id
	 */
	private Long bookId;

}

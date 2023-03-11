package com.where.library.book.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 书籍分类关系表
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@Data
@TableName("bms_book_category_relation")
public class BookCategoryRelationEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 书籍id
	 */
	@TableId(type = IdType.AUTO)
	private Long bookId;
	/**
	 * 目录id
	 */
	private Long categoryId;

}

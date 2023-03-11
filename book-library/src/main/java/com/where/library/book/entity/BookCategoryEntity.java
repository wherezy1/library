package com.where.library.book.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 书籍分类
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@Data
@TableName("bms_book_category")
public class BookCategoryEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 目录id
	 */
	@TableId(type = IdType.AUTO)
	private Long id;
	/**
	 * 目录
	 */
	private String category;

}

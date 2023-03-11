package com.where.library.book.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 图书标准spu表
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@Data
@TableName("bms_book_spu")
public class BookSpuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 书籍编号
	 */
	@TableId(type = IdType.AUTO)
	private Long id;
	/**
	 * 书籍名
	 */
	private String bookName;
	/**
	 * 作者id
	 */
	private Long writerId;
	/**
	 * 出版商
	 */
	private String publisher;
	/**
	 * 购入时间
	 */
	private String inputTime;
	/**
	 * 书籍描述
	 */
	@TableField("`describe`")
	private String describe;
	/**
	 * 图片
	 */
	private String image;
	/**
	 * 是否展示： 1:展示 0:不展示
	 */
	private Integer status = 0;
}

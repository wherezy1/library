package com.where.library.book.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * 借阅信息
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@Data
@TableName("bms_book_lend_info")
public class BookLendInfoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 借阅信息id
	 */
	@TableId(type = IdType.AUTO)
	private Long id;
	/**
	 * 借阅书籍
	 */
	private Long bookId;
	/**
	 * 借阅人
	 */
	private Long userId;
	/**
	 * 借阅时间
	 */
	private String lendTime;
	/**
	 * 归还时间
	 */
	private String returnTime;
	/**
	 * 当前状态 0：未还， 1：已还书
	 */
	private Integer status = 0;

}

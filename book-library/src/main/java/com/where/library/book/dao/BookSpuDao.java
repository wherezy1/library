package com.where.library.book.dao;

import com.where.library.book.dto.BookDetailDto;
import com.where.library.book.dto.BookUserDetailDto;
import com.where.library.book.entity.BookSpuEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 图书标准spu表
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@Mapper
public interface BookSpuDao extends BaseMapper<BookSpuEntity> {
	/*
		TODO 返回值为list集合是否需要封装为list映射
	 */
	List<BookDetailDto> getAllBookDetail(@Param("pageNum") long pageNum, @Param("pageSize") long pageSize);

	BookDetailDto getBookDetailById(@Param("id") Long id);

    List<BookUserDetailDto> getUserBookDetailAll(@Param("pageNum") long pageNum, @Param("pageSize") long pageSize);
}

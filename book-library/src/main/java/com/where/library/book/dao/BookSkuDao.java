package com.where.library.book.dao;

import com.where.library.book.entity.BookSkuEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 书籍sku库存信息
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@Mapper
public interface BookSkuDao extends BaseMapper<BookSkuEntity> {
	
}

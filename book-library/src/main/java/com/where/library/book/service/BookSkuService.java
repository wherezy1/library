package com.where.library.book.service;

import com.baomidou.mybatisplus.extension.service.IService;
import  com.where.library.common.utils.PageUtils;
import com.where.library.book.entity.BookSkuEntity;

import java.util.Map;

/**
 * 书籍sku库存信息
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
public interface BookSkuService extends IService<BookSkuEntity> {

    PageUtils queryPage(Map<String, Object> params);
}


package com.where.library.book.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import  com.where.library.common.utils.PageUtils;
import  com.where.library.common.utils.Query;

import com.where.library.book.dao.BookSkuDao;
import com.where.library.book.entity.BookSkuEntity;
import com.where.library.book.service.BookSkuService;


@Service("bookSkuService")
public class BookSkuServiceImpl extends ServiceImpl<BookSkuDao, BookSkuEntity> implements BookSkuService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<BookSkuEntity> page = this.page(
                new Query<BookSkuEntity>().getPage(params),
                new QueryWrapper<BookSkuEntity>()
        );

        return new PageUtils(page);
    }

}
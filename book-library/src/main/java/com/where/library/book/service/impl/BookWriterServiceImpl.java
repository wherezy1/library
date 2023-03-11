package com.where.library.book.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import  com.where.library.common.utils.PageUtils;
import  com.where.library.common.utils.Query;

import com.where.library.book.dao.BookWriterDao;
import com.where.library.book.entity.BookWriterEntity;
import com.where.library.book.service.BookWriterService;


@Service("bookWriterService")
public class BookWriterServiceImpl extends ServiceImpl<BookWriterDao, BookWriterEntity> implements BookWriterService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<BookWriterEntity> page = this.page(
                new Query<BookWriterEntity>().getPage(params),
                new QueryWrapper<BookWriterEntity>()
        );

        return new PageUtils(page);
    }

}
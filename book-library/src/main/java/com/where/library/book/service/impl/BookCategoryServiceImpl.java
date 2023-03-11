package com.where.library.book.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import  com.where.library.common.utils.PageUtils;
import  com.where.library.common.utils.Query;

import com.where.library.book.dao.BookCategoryDao;
import com.where.library.book.entity.BookCategoryEntity;
import com.where.library.book.service.BookCategoryService;


@Service("bookCategoryService")
public class BookCategoryServiceImpl extends ServiceImpl<BookCategoryDao, BookCategoryEntity> implements BookCategoryService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<BookCategoryEntity> page = this.page(
                new Query<BookCategoryEntity>().getPage(params),
                new QueryWrapper<BookCategoryEntity>()
        );

        return new PageUtils(page);
    }

}
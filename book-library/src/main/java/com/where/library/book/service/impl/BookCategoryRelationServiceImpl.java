package com.where.library.book.service.impl;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.where.library.book.dao.BookCategoryRelationDao;
import com.where.library.book.entity.BookCategoryRelationEntity;
import com.where.library.book.service.BookCategoryRelationService;
import org.springframework.stereotype.Service;


@Service("bookCategoryRelationService")
public class BookCategoryRelationServiceImpl extends ServiceImpl<BookCategoryRelationDao, BookCategoryRelationEntity> implements BookCategoryRelationService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<BookCategoryRelationEntity> page = this.page(
                new Query<BookCategoryRelationEntity>().getPage(params),
                new QueryWrapper<BookCategoryRelationEntity>()
        );

        return new PageUtils(page);
    }

}
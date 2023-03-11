package com.where.library.book.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.book.dao.BookSpuDao;
import com.where.library.book.dao.BookWriterDao;
import com.where.library.book.dto.BookDetailDto;
import com.where.library.book.entity.BookSpuEntity;
import com.where.library.book.service.BookSpuService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("bookSpuService")
public class BookSpuServiceImpl extends ServiceImpl<BookSpuDao, BookSpuEntity> implements BookSpuService {
    @Autowired
    private BookWriterDao bookWriterDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<BookSpuEntity> page = this.page(
                new Query<BookSpuEntity>().getPage(params),
                new QueryWrapper<BookSpuEntity>()
        );
        return new PageUtils(page);
    }

    public PageUtils getAllBookDetail(Map<String, Object> params) {
        IPage page = new Query().getPage(params);
        List<BookDetailDto> list = this.baseMapper.getAllBookDetail(page.getCurrent()-1, page.getSize());
        page.setRecords(list);
        return new PageUtils(page);
    }

    @Override
    public BookDetailDto getBookDetailById(Long id) {
        BookDetailDto bookDetailDto = this.baseMapper.getBookDetailById(id);
        return bookDetailDto;
    }
}
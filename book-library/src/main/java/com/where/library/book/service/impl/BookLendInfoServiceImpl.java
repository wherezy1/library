package com.where.library.book.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.book.dao.BookLendInfoDao;
import com.where.library.book.dao.BookSpuDao;
import com.where.library.book.entity.BookLendInfoEntity;
import com.where.library.book.service.BookLendInfoService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.common.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service("bookLendInfoService")
public class BookLendInfoServiceImpl extends ServiceImpl<BookLendInfoDao, BookLendInfoEntity> implements BookLendInfoService {
    @Autowired
    private BookSpuDao bookSpuDao;

    // 借书记录
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<BookLendInfoEntity> page = this.page(
                new Query<BookLendInfoEntity>().getPage(params),
                new QueryWrapper<BookLendInfoEntity>()
        );
        return new PageUtils(page);
    }

    @Override
    public R changeStatus(Long id, Integer status) {
        BookLendInfoEntity bookLendInfoEntity = new BookLendInfoEntity();
        bookLendInfoEntity.setId(id);
        bookLendInfoEntity.setStatus(status == 1 ? 0 : 1);
        int i = this.baseMapper.updateById(bookLendInfoEntity);
        if (i > 0) return R.ok("修改成功");
        else return R.error("修改失败");
    }

}
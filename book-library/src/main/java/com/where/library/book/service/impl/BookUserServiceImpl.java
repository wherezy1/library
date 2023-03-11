package com.where.library.book.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.where.library.book.dao.BookLendInfoDao;
import com.where.library.book.dao.BookSkuDao;
import com.where.library.book.dao.BookSpuDao;
import com.where.library.book.dto.BookDetailDto;
import com.where.library.book.dto.BookUserDetailDto;
import com.where.library.book.entity.BookLendInfoEntity;
import com.where.library.book.entity.BookSkuEntity;
import com.where.library.book.entity.BookSpuEntity;
import com.where.library.book.interceptor.UserTokenInterceptor;
import com.where.library.book.service.BookSpuService;
import com.where.library.book.service.BookUserService;
import com.where.library.common.utils.DateUtils;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.common.utils.R;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/26/15:23
 * @Description:
 */
@Service
public class BookUserServiceImpl implements BookUserService {
    @Autowired
    private BookSpuService bookSpuService;
    @Autowired
    private BookSpuDao bookSpuDao;
    @Autowired
    private BookLendInfoDao bookLendInfoDao;
    @Autowired
    private BookSkuDao bookSkuDao;

    @Override
    public BookUserDetailDto getBookUserDetailById(Long id) {
        BookDetailDto detail = bookSpuService.getBookDetailById(id);
        if (ObjectUtils.isEmpty(detail)) {
            return null;
        }
        BookUserDetailDto bookUser = new BookUserDetailDto();
        BeanUtils.copyProperties(detail, bookUser);
        if (detail.getStock() > 0) {
            bookUser.setHasStock(true);
        } else {
            bookUser.setHasStock(false);
        }
        return bookUser;
    }

    @Override
    public PageUtils getBookUserList(Map<String, Object> params) {
        IPage page = new Query().getPage(params);
        List<BookUserDetailDto> list = bookSpuDao.getUserBookDetailAll(page.getCurrent()-1, page.getSize());
        page.setRecords(list);
        return new PageUtils(page);
    }

    @Override
    @Transactional
    public R lendBookByIds(Long[] skuIds) {
        Long userId = UserTokenInterceptor.threadLocalUserId.get();
        List<String> error = new ArrayList<>();
        Arrays.stream(skuIds).forEach(bookId -> {
            BookSpuEntity bookSpuEntity = bookSpuDao.selectById(bookId);
            QueryWrapper<BookSkuEntity> queryWrapper = new QueryWrapper<BookSkuEntity>().eq("book_id", bookId);
            BookSkuEntity bookSkuEntity = bookSkuDao.selectOne(queryWrapper);
            if (ObjectUtils.isEmpty(bookSkuEntity)){
                error.add(bookSpuEntity.getBookName() + "库存查询异常，请稍后再试");
            } else {
                // 1、查询库存，库存不够跳过
                Long stock = bookSkuEntity.getStock();
                if (stock > 0) {
                    bookSkuEntity.setStock(stock - 1);
                    int update = bookSkuDao.update(bookSkuEntity, queryWrapper);
                    if (update > 0) {
                        // 2、添加借书记录
                        BookLendInfoEntity bookLendInfoEntity = new BookLendInfoEntity();
                        bookLendInfoEntity.setBookId(bookId);
                        bookLendInfoEntity.setUserId(userId);
                        bookLendInfoEntity.setLendTime(DateUtils.getCurrentDate());
                        bookLendInfoEntity.setStatus(0);
                        bookLendInfoDao.insert(bookLendInfoEntity);
                    } else {
                        error.add(bookSpuEntity.getBookName() + "更新库存失败，发生未知异常");
                    }
                }
            }
        });
        R r = new R();
        if (error.size() > 0) {
            r.put("error", error);
        }
        return r.ok();
    }

    @Override
    @Transactional
    public R returnBookByIds(Long[] skuIds) {
        Long userId = UserTokenInterceptor.threadLocalUserId.get();
        List<String> error = new ArrayList<>();
        Arrays.stream(skuIds).forEach(bookId -> {
            // 用户获取书籍名称
            BookSpuEntity bookSpuEntity = bookSpuDao.selectById(bookId);
            QueryWrapper<BookSkuEntity> queryWrapper = new QueryWrapper<BookSkuEntity>().eq("book_id", bookId);
            BookSkuEntity bookSkuEntity = bookSkuDao.selectOne(queryWrapper);
            if (ObjectUtils.isEmpty(bookSkuEntity)) {
                error.add(bookSpuEntity.getBookName() + "库存查询异常，请稍后再试");
            } else {
                // 1、查询库存，用于更新库存
                Long stock = bookSkuEntity.getStock();
                bookSkuEntity.setStock(stock + 1);
                int update = bookSkuDao.update(bookSkuEntity, queryWrapper);
                if (update > 0) {
                    // 2、更新借书记录
                    BookLendInfoEntity bookLendInfoEntity = new BookLendInfoEntity();
                    bookLendInfoEntity.setReturnTime(DateUtils.getCurrentDate());
                    bookLendInfoEntity.setStatus(1);
                    // 更新
                    bookLendInfoDao.update(bookLendInfoEntity, new QueryWrapper<BookLendInfoEntity>().eq("book_id", bookId));
                } else {
                    error.add(bookSpuEntity.getBookName() + "更新库存失败，发生未知异常");
                }
            }
        });
        R r = new R();
        if (error.size() > 0) {
            r.put("error", error);
        }
        return r.ok();
    }

    @Override
    public R getBookUserDetail(Long[] ids) {
        List<BookUserDetailDto> list = new ArrayList<>();
        for (Long id : ids) {
            BookUserDetailDto bookUserDetailById = getBookUserDetailById(id);
            if (!ObjectUtils.isEmpty(bookUserDetailById)) {
                list.add(bookUserDetailById);
            }
        }
        return R.ok().put("list", list);
    }
}

package com.where.library.book.service;

import com.where.library.book.dto.BookUserDetailDto;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;

import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/26/15:22
 * @Description:
 */
public interface BookUserService {
    /**
     * 通过id查询书籍详情信息
     * @param id
     * @return
     */
    BookUserDetailDto getBookUserDetailById(Long id);

    /**
     * 分页返回 用户图书列表
     * @param param
     * @return
     */
    PageUtils getBookUserList(Map<String, Object> param);

    /**
     * 通过ids借书
     * @param skuIds
     * @return
     */
    R lendBookByIds(Long[] skuIds);

    /**
     * 通过book_ids还书
     *
     * @param skuIds@return
     */
    R returnBookByIds(Long[] skuIds);

    /**
     *
     * @param id
     * @return
     */
    R getBookUserDetail(Long[] id);
}

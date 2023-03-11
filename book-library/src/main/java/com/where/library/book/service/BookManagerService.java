package com.where.library.book.service;

import com.where.library.book.entity.BookSkuEntity;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.book.dto.BookDetailDto;

import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/24/15:04
 * @Description:
 */
public interface BookManagerService {
    /**
     * 查询所有库存信息
     * @param param
     * @return
     */
    PageUtils getAllStockDetail(Map<String, Object> param);

    /**
     * 接收要上架书本库存的ids
     * 并将书籍改为展示状态
     * @param skuIds@return
     */
    R save(Long[] skuIds);

    /**
     * 购书
     * @param bookDetailDto
     */
    void addBook(BookDetailDto bookDetailDto);

    /**
     * 添加或者减少库存
     */
    R changeStock(BookSkuEntity skuEntity);

    /**
     * 下架 + 修改状态
     * @param skuIds
     * @return
     */
    R delete(Long[] skuIds);
}

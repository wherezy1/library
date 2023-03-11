package com.where.library.book.service;

import com.baomidou.mybatisplus.extension.service.IService;
import  com.where.library.common.utils.PageUtils;
import com.where.library.book.dto.BookDetailDto;
import com.where.library.book.entity.BookSpuEntity;

import java.util.Map;

/**
 * 图书标准spu表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
public interface BookSpuService extends IService<BookSpuEntity> {

    PageUtils queryPage(Map<String, Object> params);

    PageUtils getAllBookDetail(Map<String, Object> params);

    /**
     * 获取详情页信息
     * @param id
     * @return
     */
    BookDetailDto getBookDetailById(Long id);
}


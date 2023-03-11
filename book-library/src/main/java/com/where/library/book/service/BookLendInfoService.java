package com.where.library.book.service;

import com.baomidou.mybatisplus.extension.service.IService;
import  com.where.library.common.utils.PageUtils;
import com.where.library.book.entity.BookLendInfoEntity;
import com.where.library.common.utils.R;

import java.util.Map;

/**
 * 借阅信息
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
public interface BookLendInfoService extends IService<BookLendInfoEntity> {

    PageUtils queryPage(Map<String, Object> params);

    /**
     * 修改状态
     * @param id
     * @param status
     * @return
     */
    R changeStatus(Long id, Integer status);

}


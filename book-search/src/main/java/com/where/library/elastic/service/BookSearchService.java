package com.where.library.elastic.service;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.elastic.dto.SearchParam;
import com.where.library.elastic.entity.ESBookEntity;

import java.io.IOException;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/24/17:00
 * @Description:
 */
public interface BookSearchService {
    /**
     * 书籍上架
     * @param esBookEntityList
     * @return
     */
    R save(List<ESBookEntity> esBookEntityList);

    /**
     * 根据查询参数书籍
     * @param searchParam
     * @return
     */
    PageUtils search(SearchParam searchParam) throws IOException;

    /**
     * 根据ids删除映射
     * @param ids
     */
    R delete(Long[] ids);
}

package com.where.library.elastic.dto;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/24/21:52
 * @Description: 查询参数
 */
@Data
public class SearchParam {
    /**
     * 关键词查询
     */
    private String keyword;
    /**
     * 书名
     */
    private String brandId;
    /**
     * 出版商
     */
    private String publisher;
    /**
     * 分类id
     */
    private Long categoryId;
    /**
     * 作者id
     */
    private Long writerId;
    /**
     * 库存信息
     */
    private Boolean hasStock;
    /**
     * 页码
     */
    private Integer pageNum;
    /**
     * 页面大小
     */
    private Integer pageSize;
    /**
     * 排序 abs decs
     */
    private String sort;
}

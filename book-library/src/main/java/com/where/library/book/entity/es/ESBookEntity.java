package com.where.library.book.entity.es;

import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/23/16:00
 * @Description: 对象映射实体
 */
@Data
public class ESBookEntity {
    private Long id;
    private Long categoryId;
    private String category;
    private String bookName;
    private String publisher;
    /**
     * 图片 不建立索引
     */
    private String image;
    private String inputTime;
    /**
     * 作者信息的嵌套
     */
    private Long writerId;
    private String writer;
    /**
     * 返回库存id，为了上架
     */
    private Long skuId;
    /**
     * 是否有库存
     */
    private Boolean hasStock;
}
//    @TableId(type = IdType.AUTO)
//    private Long id;
//    /**
//     * 书籍名
//     */
//    private String bookName;
//    /**
//     * 作者id
//     */
//    private Long writerId;
//    /**
//     * 出版商
//     */
//    private String publisher;
//    /**
//     * 购入时间
//     */
//    private String inputTime;
//    /**
//     * 书籍描述
//     */
//    private String describe;
//    /**
//     * 图片
//     */
//    private String image;
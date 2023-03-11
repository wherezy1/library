package com.where.library.book.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/26/15:39
 * @Description: 用户书籍展示页
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookUserDetailDto implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 书籍编号
     */
    private Long id;
    /**
     * 书籍名
     */
    @NotNull
    private String bookName;
    /**
     * 分类id
     */
    private Long categoryId;
    /**
     * 分类
     */
    private String category;
    /**
     * 作者id
     */
    private Long writerId;
    /**
     * 作者
     */
    private String writer;
    /**
     * 出版商
     */
    private String publisher;
    /**
     * 书籍描述
     */
    private String describe;
    /**
     * 图片
     */
    private String image;
    /**
     * 是否有库存
     */
    private Boolean hasStock;

    /**
     * 库存id
     */
//    private Long stockId;
    /**
     * 库存
     */
//    @NotNull
//    private Long stock;
    /**
     * 是否展示： 1:展示 0:不展示
     */
//    private String status = String.valueOf(0);
}
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
 * @Date: 2022/11/25/15:51
 * @Description: 返回书籍的信息 接收添加书籍信息
 * 添加Validated注解  校验、限定信息
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookDetailDto implements Serializable {
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
    @NotNull
    private String category;
    /**
     * 作者id
     */
    private Long writerId;
    /**
     * 作者
     */
    @NotNull
    private String writer;
    /**
     * 出版商
     */
    @NotNull
    private String publisher;
    /**
     * 购入时间
     */
    private String inputTime;
    /**
     * 书籍描述
     */
    private String describe;
    /**
     * 图片
     */
    private String image;
    /**
     * 库存id
     */
    private Long skuId;
    /**
     * 库存
     */
    @NotNull
    private Long stock;
    /**
     * 是否展示： 1:展示 0:不展示
     */
    private Integer status = 0;
}

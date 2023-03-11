package com.where.library.elastic.entity;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/23/16:00
 * @Description: 对象映射实体
 */
@Data
@Document(indexName = "book", createIndex = true)
public class ESBookEntity {
    @Id
    @Field(type = FieldType.Text)
    private Long id;
    @Field(type = FieldType.Keyword)
    private Long categoryId;
    @Field(type = FieldType.Text, analyzer="ik_max_word")
    private String bookName;
    @Field(type = FieldType.Text, analyzer = "ik_max_word")
    private String publisher;
    @Field(type = FieldType.Text, analyzer = "ik_max_word")
    private String category;
    /**
     * 图片 不建立索引
     */
    @Field(type = FieldType.Text)
    private String image;
    @Field(index = false, type = FieldType.Text)
    private String inputTime;
    /**
     * 作者信息
     */
    @Field(type = FieldType.Keyword)
    private Long writerId;
    @Field(type = FieldType.Text, analyzer = "ik_max_word")
    private String writer;
    /**
     * 是否有库存
     */
    @Field(type = FieldType.Boolean)
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
package com.where.library.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/12/09/16:20
 * @Description: 用户 建立 学院和专业关系
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class DepartmentMajorDto {
    /**
     * 专业id
     */
    private Long id;
    /**
     * 学院id
     */
    private Long departmentId;
    /**
     * 专业
     */
    private String major;
    /**
     * 描述信息
     */
    private String describe;
    /**
     * 状态： 0 正常 1：停用
     */
    private Integer status = 0;
}

package com.where.library.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/12/08/20:00
 * @Description: 用于树形数据展示
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MenuChildDto {
    /**
     * 菜单id
     */
    private Long id;
    /**
     * 菜单名
     */
    private String label;
    /**
     * 子菜单
     */
    List<MenuChildDto> children;
}
/** 与树形 data对应
 * data: [{
 *         id: null,
 *         label: '',
 *         children: []
 *       }],
 */
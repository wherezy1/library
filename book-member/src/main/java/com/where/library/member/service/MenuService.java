package com.where.library.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.entity.MenuEntity;

import java.util.Map;

/**
 * 权限表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-12-08 19:43:59
 */
public interface MenuService extends IService<MenuEntity> {

    PageUtils queryPage(Map<String, Object> params);

    /**
     * 获取所有菜单列表 及其 子菜单
     * @return
     */
    R getMenuByChild();

    /**
     * 通过角色id获得菜单列表
     * @param id
     * @return
     */
    R getMenuByChildById(Long id);
}


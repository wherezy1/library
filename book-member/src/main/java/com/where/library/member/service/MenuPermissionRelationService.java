package com.where.library.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.where.library.common.utils.PageUtils;
import com.where.library.member.entity.MenuPermissionRelationEntity;

import java.util.Map;

/**
 * 
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-12-08 19:43:59
 */
public interface MenuPermissionRelationService extends IService<MenuPermissionRelationEntity> {

    PageUtils queryPage(Map<String, Object> params);
}


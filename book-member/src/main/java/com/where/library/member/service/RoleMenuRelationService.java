package com.where.library.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.dto.RoleMenuRelationDto;
import com.where.library.member.entity.RoleMenuRelationEntity;

import java.util.Map;

/**
 * 角色权限表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-27 14:47:14
 */
public interface RoleMenuRelationService extends IService<RoleMenuRelationEntity> {

    PageUtils queryPage(Map<String, Object> params);

    /**
     * 通过父id获得children
     */
    R getChildrenByRoleId(Long roleId);

    /**
     * 改变关系
     */
    R change(RoleMenuRelationDto relationDto);
}


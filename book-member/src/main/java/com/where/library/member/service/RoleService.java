package com.where.library.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.entity.RoleEntity;

import java.util.Map;

/**
 * 角色表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-27 14:47:14
 */
public interface RoleService extends IService<RoleEntity> {

    PageUtils queryPage(Map<String, Object> params);

    /**
     * 获取角色通过userId
     * @param userId
     * @return
     */
    R getRoleByUserId(Long userId);

}


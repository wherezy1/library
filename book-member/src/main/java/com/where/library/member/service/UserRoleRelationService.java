package com.where.library.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.dto.UserRoleDto;
import com.where.library.member.entity.UserRoleRelationEntity;

import java.util.Map;

/**
 * 用户角色表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-27 14:47:14
 */
public interface UserRoleRelationService extends IService<UserRoleRelationEntity> {

    PageUtils queryPage(Map<String, Object> params);

    /**
     * 更具roleId分配
     * @param userRoleDto
     * @return
     */
    R distribute(UserRoleDto userRoleDto);

}


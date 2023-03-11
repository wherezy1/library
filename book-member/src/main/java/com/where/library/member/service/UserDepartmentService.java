package com.where.library.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.where.library.common.utils.PageUtils;
import com.where.library.member.entity.UserDepartmentEntity;

import java.util.Map;

/**
 * `bms_department`
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 21:25:51
 */
public interface UserDepartmentService extends IService<UserDepartmentEntity> {

    PageUtils queryPage(Map<String, Object> params);
}


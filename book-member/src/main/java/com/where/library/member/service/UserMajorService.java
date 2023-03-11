package com.where.library.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.entity.UserMajorEntity;

import java.util.Map;

/**
 * `bms_major`
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 21:25:51
 */
public interface UserMajorService extends IService<UserMajorEntity> {

    PageUtils queryPage(Map<String, Object> params);

    /**
     * 通过 departmentId 获取major信息
     */
    R getMajorByDepartmentId(Map<String, Object> params);

}


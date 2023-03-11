package com.where.library.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.entity.DepartmentMajorRelationEntity;

import java.util.Map;

/**
 * `bms_department_major_relation`
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 21:34:12
 */
public interface DepartmentMajorRelationService extends IService<DepartmentMajorRelationEntity> {

    PageUtils queryPage(Map<String, Object> params);

    /**
     * 获取专业列表
     * @param id
     * @return
     */
    R getMajorByDepartmentId(Long id);

    R getDepartmentByMajorId(Long id);

}


package com.where.library.member.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.member.dao.PermissionDao;
import com.where.library.member.entity.PermissionEntity;
import com.where.library.member.service.PermissionService;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service("permissionService")
public class PermissionServiceImpl extends ServiceImpl<PermissionDao, PermissionEntity> implements PermissionService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<PermissionEntity> page = this.page(
                new Query<PermissionEntity>().getPage(params),
                new QueryWrapper<PermissionEntity>()
        );

        return new PageUtils(page);
    }



}
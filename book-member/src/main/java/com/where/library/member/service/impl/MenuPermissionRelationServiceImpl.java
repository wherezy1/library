package com.where.library.member.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.member.dao.MenuPermissionRelationDao;
import com.where.library.member.entity.MenuPermissionRelationEntity;
import com.where.library.member.service.MenuPermissionRelationService;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service("menuPermissionRelationService")
public class MenuPermissionRelationServiceImpl extends ServiceImpl<MenuPermissionRelationDao, MenuPermissionRelationEntity> implements MenuPermissionRelationService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<MenuPermissionRelationEntity> page = this.page(
                new Query<MenuPermissionRelationEntity>().getPage(params),
                new QueryWrapper<MenuPermissionRelationEntity>()
        );

        return new PageUtils(page);
    }

}
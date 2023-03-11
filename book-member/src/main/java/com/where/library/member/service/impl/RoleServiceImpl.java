package com.where.library.member.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.common.utils.R;
import com.where.library.member.dao.RoleDao;
import com.where.library.member.dao.UserRoleRelationDao;
import com.where.library.member.entity.RoleEntity;
import com.where.library.member.entity.UserRoleRelationEntity;
import com.where.library.member.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@Service("roleService")
public class RoleServiceImpl extends ServiceImpl<RoleDao, RoleEntity> implements RoleService {
    @Autowired
    private UserRoleRelationDao userRoleRelationDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<RoleEntity> page = this.page(
                new Query<RoleEntity>().getPage(params),
                new QueryWrapper<RoleEntity>()
        );

        return new PageUtils(page);
    }

    @Override
    public R getRoleByUserId(Long userId) {
        List<UserRoleRelationEntity> relationList = userRoleRelationDao.selectList(new QueryWrapper<UserRoleRelationEntity>().eq("user_id", userId));

        List<RoleEntity> roleList = relationList.stream().map(relation -> {
            return this.baseMapper.selectById(relation.getRoleId());
        }).collect(Collectors.toList());

        return R.ok().put("role", roleList);
    }
}
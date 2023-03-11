package com.where.library.member.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.common.utils.R;
import com.where.library.member.dao.UserRoleRelationDao;
import com.where.library.member.dto.UserRoleDto;
import com.where.library.member.entity.UserRoleRelationEntity;
import com.where.library.member.service.UserRoleRelationService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@Service("userRoleRelationService")
public class UserRoleRelationServiceImpl extends ServiceImpl<UserRoleRelationDao, UserRoleRelationEntity> implements UserRoleRelationService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<UserRoleRelationEntity> page = this.page(
                new Query<UserRoleRelationEntity>().getPage(params),
                new QueryWrapper<UserRoleRelationEntity>()
        );

        return new PageUtils(page);
    }

    @Override
    public R distribute(UserRoleDto userRoleDto) {
        List<UserRoleRelationEntity> relationList = this.baseMapper.selectList(new QueryWrapper<UserRoleRelationEntity>().eq("user_id", userRoleDto.getUserId()));
        // 过滤已存在的role
        List<Long> roleList =userRoleDto.getRoleId().stream().filter(roleId -> {
            return relationList.contains(roleId);
        }).collect(Collectors.toList());
        roleList.forEach(roleId -> {
            UserRoleRelationEntity relation = new UserRoleRelationEntity();
            relation.setRoleId(roleId);
            relation.setUserId(userRoleDto.getUserId());
            this.baseMapper.insert(relation);
        });
        return R.ok("分配成功");
    }
}
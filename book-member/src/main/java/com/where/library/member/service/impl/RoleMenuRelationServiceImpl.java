package com.where.library.member.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.common.utils.R;
import com.where.library.member.dao.RoleMenuRelationDao;
import com.where.library.member.dto.RoleMenuRelationDto;
import com.where.library.member.entity.RoleMenuRelationEntity;
import com.where.library.member.service.RoleMenuRelationService;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.util.Arrays;
import java.util.List;
import java.util.Map;


@Service("roleMenuRelationService")
public class RoleMenuRelationServiceImpl extends ServiceImpl<RoleMenuRelationDao, RoleMenuRelationEntity> implements RoleMenuRelationService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<RoleMenuRelationEntity> page = this.page(
                new Query<RoleMenuRelationEntity>().getPage(params),
                new QueryWrapper<RoleMenuRelationEntity>()
        );

        return new PageUtils(page);
    }

    /**
     * 通过角色id获得children
     */
    @Override
    public R getChildrenByRoleId(Long roleId) {
        List<RoleMenuRelationEntity> children = this.baseMapper.selectList(new QueryWrapper<RoleMenuRelationEntity>().eq("parent_id", roleId));
        if (children != null)
            return R.ok().put("list", children);
        else
            return R.error("未查找到子节点");
    }

    @Override
    public R change(RoleMenuRelationDto relationDto) {
        // 1、批量删除
        Long roleId = relationDto.getRoleId();
        int i = this.baseMapper.delete(new QueryWrapper<RoleMenuRelationEntity>().eq("role_id", roleId));
        Arrays.stream(relationDto.getMenuIdList()).forEach(menuId -> {
            RoleMenuRelationEntity bool = this.baseMapper.selectOne(new QueryWrapper<RoleMenuRelationEntity>().eq("role_id", roleId).eq("menu_id", menuId));
            // 如果不存在，则添加
            if (ObjectUtils.isEmpty(bool)) {
                RoleMenuRelationEntity relation = new RoleMenuRelationEntity();
                 relation.setRoleId(roleId);
                relation.setMenuId(menuId);
                this.baseMapper.insert(relation);
            }
        });
        return R.ok("更新成功");
    }


    /**
     * 当前节点的子节点 是否全部被选中 或者 当前节点为子节点
     */

}
package com.where.library.member.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.common.utils.R;
import com.where.library.member.dao.MenuDao;
import com.where.library.member.dto.MenuChildDto;
import com.where.library.member.entity.MenuEntity;
import com.where.library.member.entity.RoleMenuRelationEntity;
import com.where.library.member.service.MenuService;
import com.where.library.member.service.RoleMenuRelationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@Service("menuService")
public class MenuServiceImpl extends ServiceImpl<MenuDao, MenuEntity> implements MenuService {
    @Autowired
    private RoleMenuRelationService roleMenuRelationService;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<MenuEntity> page = this.page(
                new Query<MenuEntity>().getPage(params),
                new QueryWrapper<MenuEntity>().eq("parent_id", Long.valueOf(params.get("parentId").toString()))
        );

        return new PageUtils(page);
    }

    @Override
    public R getMenuByChild() {
        // 1、存最终数据
        // 2、查询一级菜单
        List<MenuEntity> parent = this.baseMapper.selectList(new QueryWrapper<MenuEntity>().eq("parent_id", 0));
        List<MenuChildDto> result = parent.stream().map(p -> {
            MenuChildDto childDto = new MenuChildDto();
//            BeanUtils.copyProperties(p, childDto);
            childDto.setId(p.getId());
            childDto.setLabel(p.getMenuName());

            // 3、递归查询子菜单
            List<MenuChildDto> children = getChildren(p);
            childDto.setChildren(children);
            return childDto;
        }).collect(Collectors.toList());
        return R.ok().put("list", result);
    }

    private List<MenuChildDto> getChildren(MenuEntity parent) {
        if (ObjectUtils.isEmpty(parent) || parent.getParentId() == null) {
            return null;
        }
        List<MenuEntity> list = this.baseMapper.selectList(new QueryWrapper<MenuEntity>().eq("parent_id", parent.getId()));
        List<MenuChildDto> result = list.stream().map(p -> {
            MenuChildDto childDto = new MenuChildDto();
//            BeanUtils.copyProperties(p, childDto);
            childDto.setId(p.getId());
            childDto.setLabel(p.getMenuName());
            // 3、递归查询子菜单
            List<MenuChildDto> children = getChildren(p);
            childDto.setChildren(children);
            return childDto;
        }).collect(Collectors.toList());
        return result;
    }

    @Override
    public R getMenuByChildById(Long roleId) {
        List<RoleMenuRelationEntity> relationList = roleMenuRelationService.list(new QueryWrapper<RoleMenuRelationEntity>().eq("role_id", roleId));
        List<Long> array = relationList.stream().map(relation -> {
            MenuEntity menu = this.baseMapper.selectOne(new QueryWrapper<MenuEntity>().eq("id", relation.getMenuId()));
            return menu.getId();

        }).collect(Collectors.toList());

        // 只返回 当前的节点， 不返回其节点之下的子节点（前端默认当前选中节点的子节点选中）
        // 后端数据库只用记录当前节点最高级（例如：返回 1 （一级）-（4，5）二级 或者  返回4 / 5） 返回 1

//        List<Long> list = new ArrayList<>();
//        getMenuId(list, result);
//        Long[] array = new Long[list.size()];
//        array = list.toArray(array);
        return R.ok().put("array", array);
    }

    // 递归获取childDto的子节点的菜单id
    public void getMenuId(List<Long> result, List<MenuChildDto> childDto) {
        if (ObjectUtils.isEmpty(childDto)) {
            return ;
        }
        childDto.stream().forEach(child -> {
            result.add(child.getId());
            getMenuId(result, child.getChildren());
        });
    }
}
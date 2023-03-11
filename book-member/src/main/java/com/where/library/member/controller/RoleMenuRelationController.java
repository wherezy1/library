package com.where.library.member.controller;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.dto.RoleMenuRelationDto;
import com.where.library.member.entity.RoleMenuRelationEntity;
import com.where.library.member.service.RoleMenuRelationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 角色权限表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-27 14:47:14
 */
@RestController
@RequestMapping("member/rolemenurelation")
public class RoleMenuRelationController {
    @Autowired
    private RoleMenuRelationService roleMenuRelationService;

    /**
     * refresh 更新role和menu关系
     */
    @PostMapping("/change")
    public R change(@RequestBody RoleMenuRelationDto relationDto) {
        return roleMenuRelationService.change(relationDto);
    }

    /**
     * 得到子节点集合
     */
    @GetMapping("/child/{id}")
    public R getChildren(@PathVariable Long RoleId) {
        return roleMenuRelationService.getChildrenByRoleId(RoleId);
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    // // @RequiresPermissions("member:rolemenurelation:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = roleMenuRelationService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{roleId}")
    // // @RequiresPermissions("member:rolemenurelation:info")
    public R info(@PathVariable("roleId") Long roleId){
		RoleMenuRelationEntity roleMenuRelation = roleMenuRelationService.getById(roleId);

        return R.ok().put("roleMenuRelation", roleMenuRelation);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // // @RequiresPermissions("member:rolemenurelation:save")
    public R save(@RequestBody RoleMenuRelationEntity roleMenuRelation){
		roleMenuRelationService.save(roleMenuRelation);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // // @RequiresPermissions("member:rolemenurelation:update")
    public R update(@RequestBody RoleMenuRelationEntity roleMenuRelation){
		roleMenuRelationService.updateById(roleMenuRelation);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // // @RequiresPermissions("member:rolemenurelation:delete")
    public R delete(@RequestBody Long[] roleIds){
		roleMenuRelationService.removeByIds(Arrays.asList(roleIds));

        return R.ok();
    }

}

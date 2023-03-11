package com.where.library.member.controller;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.entity.MenuPermissionRelationEntity;
import com.where.library.member.service.MenuPermissionRelationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-12-08 19:43:59
 */
@RestController
@RequestMapping("member/menupermissionrelation")
public class MenuPermissionRelationController {
    @Autowired
    private MenuPermissionRelationService menuPermissionRelationService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    // @RequiresPermissions("member:menupermissionrelation:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = menuPermissionRelationService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{menuId}")
    // @RequiresPermissions("member:menupermissionrelation:info")
    public R info(@PathVariable("menuId") Long menuId){
		MenuPermissionRelationEntity menuPermissionRelation = menuPermissionRelationService.getById(menuId);

        return R.ok().put("menuPermissionRelation", menuPermissionRelation);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // @RequiresPermissions("member:menupermissionrelation:save")
    public R save(@RequestBody MenuPermissionRelationEntity menuPermissionRelation){
		menuPermissionRelationService.save(menuPermissionRelation);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // @RequiresPermissions("member:menupermissionrelation:update")
    public R update(@RequestBody MenuPermissionRelationEntity menuPermissionRelation){
		menuPermissionRelationService.updateById(menuPermissionRelation);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // @RequiresPermissions("member:menupermissionrelation:delete")
    public R delete(@RequestBody Long[] menuIds){
		menuPermissionRelationService.removeByIds(Arrays.asList(menuIds));

        return R.ok();
    }

}

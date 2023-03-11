package com.where.library.member.controller;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.entity.PermissionEntity;
import com.where.library.member.service.PermissionService;
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
@RequestMapping("member/permission")
public class PermissionController {
    @Autowired
    private PermissionService permissionService;



    /**
     * 列表
     */
    @RequestMapping("/list")
    // @RequiresPermissions("member:permission:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = permissionService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    // // @RequiresPermissions("member:permission:info")
    public R info(@PathVariable("id") Long id){
		PermissionEntity permission = permissionService.getById(id);

        return R.ok().put("permission", permission);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // @RequiresPermissions("member:permission:save")
    public R save(@RequestBody PermissionEntity permission){
		permissionService.save(permission);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // @RequiresPermissions("member:permission:update")
    public R update(@RequestBody PermissionEntity permission){
		permissionService.updateById(permission);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // @RequiresPermissions("member:permission:delete")
    public R delete(@RequestBody Long[] ids){
		permissionService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}

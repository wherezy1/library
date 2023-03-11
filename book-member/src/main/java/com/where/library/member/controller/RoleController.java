package com.where.library.member.controller;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.entity.RoleEntity;
import com.where.library.member.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 角色表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-27 14:47:14
 */
@RestController
@RequestMapping("member/role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    /**
     * 获取角色通过userId
     */
    @GetMapping("/roles/{userId}")
    public R getRoleByUserId(@PathVariable Long userId) {
        return roleService.getRoleByUserId(userId);
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    // // @RequiresPermissions("member:role:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = roleService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    // // @RequiresPermissions("member:role:info")
    public R info(@PathVariable("id") Long id){
		RoleEntity role = roleService.getById(id);

        return R.ok().put("role", role);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // // @RequiresPermissions("member:role:save")
    public R save(@RequestBody RoleEntity role){
		roleService.save(role);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // // @RequiresPermissions("member:role:update")
    public R update(@RequestBody RoleEntity role){
		roleService.updateById(role);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // // @RequiresPermissions("member:role:delete")
    public R delete(@RequestBody Long[] ids){
		roleService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}

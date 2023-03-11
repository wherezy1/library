package com.where.library.member.controller;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.entity.MenuEntity;
import com.where.library.member.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 权限表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-12-08 19:43:59
 */
@RestController
@RequestMapping("member/menu")
public class MenuController {
    @Autowired
    private MenuService menuService;



    /**
     * 获取所有菜单列表 及其 子菜单
     */
    @GetMapping("/child/{id}")
    public R getMenuByChildById(@PathVariable Long id) {
        return menuService.getMenuByChildById(id);
    }

    /**
     * 获取所有菜单列表 及其 子菜单
     */
    @GetMapping("/child")
    public R getMenuByChild() {
        return menuService.getMenuByChild();
    }


    /**
     * 列表
     */
    @PostMapping("/list")
    // @RequiresPermissions("member:menu:list")
    public R list(@RequestBody Map<String, Object> params){
        PageUtils page = menuService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    // @RequiresPermissions("member:menu:info")
    public R info(@PathVariable("id") Long id){
		MenuEntity menu = menuService.getById(id);

        return R.ok().put("menu", menu);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // @RequiresPermissions("member:menu:save")
    public R save(@RequestBody MenuEntity menu){
		menuService.save(menu);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // @RequiresPermissions("member:menu:update")
    public R update(@RequestBody MenuEntity menu){
		menuService.updateById(menu);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // @RequiresPermissions("member:menu:delete")
    public R delete(@RequestBody Long[] ids){
		menuService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}

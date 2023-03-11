package com.where.library.member.controller;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.dto.UserRoleDto;
import com.where.library.member.entity.UserRoleRelationEntity;
import com.where.library.member.service.UserRoleRelationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 用户角色表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-27 14:47:14
 * 管理员权限
 */
@RestController
@RequestMapping("member/userrolerelation")
public class UserRoleRelationController {
    @Autowired
    private UserRoleRelationService userRoleRelationService;


    /**
     * 分配角色
     */
    @PostMapping("/distribute")
    public R distribute(@RequestBody UserRoleDto userRoleDto) {
        return userRoleRelationService.distribute(userRoleDto);
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    // // @RequiresPermissions("member:userrolerelation:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = userRoleRelationService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{userId}")
    // // @RequiresPermissions("member:userrolerelation:info")
    public R info(@PathVariable("userId") Long userId){
		UserRoleRelationEntity userRoleRelation = userRoleRelationService.getById(userId);

        return R.ok().put("userRoleRelation", userRoleRelation);
    }

    /**
     * 保存 -- 新增
     */
    @RequestMapping("/save")
    // // @RequiresPermissions("member:userrolerelation:save")
    public R save(@RequestBody UserRoleRelationEntity userRoleRelation){
		userRoleRelationService.save(userRoleRelation);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // // @RequiresPermissions("member:userrolerelation:update")
    public R update(@RequestBody UserRoleRelationEntity userRoleRelation){
		userRoleRelationService.updateById(userRoleRelation);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // // @RequiresPermissions("member:userrolerelation:delete")
    public R delete(@RequestBody Long[] userIds){
		userRoleRelationService.removeByIds(Arrays.asList(userIds));

        return R.ok();
    }

}

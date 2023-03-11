package com.where.library.member.controller;

import java.util.Arrays;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.where.library.member.entity.UserDepartmentEntity;
import com.where.library.member.service.UserDepartmentService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;



/**
 * `bms_department`
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 21:25:51
 */
@RestController
@RequestMapping("member/userdepartment")
public class UserDepartmentController {
    @Autowired
    private UserDepartmentService userDepartmentService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    //@RequiresPermissions("member:userdepartment:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = userDepartmentService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    //@RequiresPermissions("member:userdepartment:info")
    public R info(@PathVariable("id") Long id){
		UserDepartmentEntity userDepartment = userDepartmentService.getById(id);

        return R.ok().put("userDepartment", userDepartment);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    //@RequiresPermissions("member:userdepartment:save")
    public R save(@RequestBody UserDepartmentEntity userDepartment){
		userDepartmentService.save(userDepartment);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    //@RequiresPermissions("member:userdepartment:update")
    public R update(@RequestBody UserDepartmentEntity userDepartment){
		userDepartmentService.updateById(userDepartment);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    //@RequiresPermissions("member:userdepartment:delete")
    public R delete(@RequestBody Long[] ids){
		userDepartmentService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}

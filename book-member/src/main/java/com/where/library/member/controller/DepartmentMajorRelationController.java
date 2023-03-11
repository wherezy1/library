package com.where.library.member.controller;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.entity.DepartmentMajorRelationEntity;
import com.where.library.member.service.DepartmentMajorRelationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * `bms_department_major_relation`
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 21:34:12
 */
@RestController
@RequestMapping("member/departmentmajorrelation")
public class DepartmentMajorRelationController {
    @Autowired
    private DepartmentMajorRelationService departmentMajorRelationService;


    /**
     * 获取详细数据
     */

    /**
     * 通过专业id获得学院信息
     */
    @GetMapping("/department/{id}")
    public R getDepartmentByMajorId(@PathVariable("id") Long id) {
        return departmentMajorRelationService.getDepartmentByMajorId(id);
    }

    /**
     * 获得专业的下拉列表 通过许愿id
     */
    @GetMapping("/major/{id}")
    public R getMajorByDepartmentId(@PathVariable Long id) {
        return departmentMajorRelationService.getMajorByDepartmentId(id);
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    // @RequiresPermissions("member:departmentmajorrelation:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = departmentMajorRelationService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{departmentId}")
    // @RequiresPermissions("member:departmentmajorrelation:info")
    public R info(@PathVariable("departmentId") Long departmentId){
		DepartmentMajorRelationEntity departmentMajorRelation = departmentMajorRelationService.getById(departmentId);

        return R.ok().put("departmentMajorRelation", departmentMajorRelation);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // @RequiresPermissions("member:departmentmajorrelation:save")
    public R save(@RequestBody DepartmentMajorRelationEntity departmentMajorRelation){
		departmentMajorRelationService.save(departmentMajorRelation);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // @RequiresPermissions("member:departmentmajorrelation:update")
    public R update(@RequestBody DepartmentMajorRelationEntity departmentMajorRelation){
		departmentMajorRelationService.updateById(departmentMajorRelation);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // @RequiresPermissions("member:departmentmajorrelation:delete")
    public R delete(@RequestBody Long[] departmentIds){
		departmentMajorRelationService.removeByIds(Arrays.asList(departmentIds));

        return R.ok();
    }

}

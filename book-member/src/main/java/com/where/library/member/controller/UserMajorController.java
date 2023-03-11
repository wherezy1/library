package com.where.library.member.controller;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.dto.DepartmentMajorDto;
import com.where.library.member.entity.DepartmentMajorRelationEntity;
import com.where.library.member.entity.UserMajorEntity;
import com.where.library.member.service.DepartmentMajorRelationService;
import com.where.library.member.service.UserMajorService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * `bms_major`
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 21:25:51
 */
@RestController
@RequestMapping("member/usermajor")
public class UserMajorController {
    @Autowired
    private UserMajorService userMajorService;
    @Autowired
    private DepartmentMajorRelationService departmentMajorRelationService;

    /**
     * 通过 departmentId 获取major信息
     */
    @PostMapping("/major")
    public R getMajorByDepartmentId(@RequestBody Map<String, Object> params) {
        return userMajorService.getMajorByDepartmentId(params);
    }


    /**
     * 列表
     */
    @RequestMapping("/list")
    //@RequiresPermissions("member:usermajor:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = userMajorService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    //@RequiresPermissions("member:usermajor:info")
    public R info(@PathVariable("id") Long id){
		UserMajorEntity userMajor = userMajorService.getById(id);

        return R.ok().put("userMajor", userMajor);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    //@RequiresPermissions("member:usermajor:save")
    public R save(@RequestBody DepartmentMajorDto departmentMajorDto){
        // 0、需要departmentId
        Long departmentId = departmentMajorDto.getDepartmentId();
        if (ObjectUtils.isEmpty(departmentId)) {
            return R.error("专业信息错误,请检查操作步骤");
        }
        // 1、添加专业
        UserMajorEntity major = new UserMajorEntity();
        BeanUtils.copyProperties(departmentMajorDto, major);
        boolean save = userMajorService.save(major);
        if (save == true) {
            // 2、添加成功 则 添加关系
            DepartmentMajorRelationEntity relation = new DepartmentMajorRelationEntity();
            relation.setMajorId(major.getId());
            relation.setDepartmentId(departmentId);
            boolean b = departmentMajorRelationService.save(relation);
            if (!b) {
                return R.error("运行错误");
            } else {
                return R.ok("添加成功");
            }
        }
        return R.error("运行错误");
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    //@RequiresPermissions("member:usermajor:update")
    public R update(@RequestBody UserMajorEntity userMajor){
		userMajorService.updateById(userMajor);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    //@RequiresPermissions("member:usermajor:delete")
    public R delete(@RequestBody Long[] ids){
		userMajorService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}

package com.where.library.member.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.common.utils.R;
import com.where.library.member.dao.DepartmentMajorRelationDao;
import com.where.library.member.dao.UserMajorDao;
import com.where.library.member.entity.DepartmentMajorRelationEntity;
import com.where.library.member.entity.UserMajorEntity;
import com.where.library.member.service.UserMajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@Service("userMajorService")
public class UserMajorServiceImpl extends ServiceImpl<UserMajorDao, UserMajorEntity> implements UserMajorService {
    @Autowired
    private DepartmentMajorRelationDao departmentMajorRelationDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<UserMajorEntity> page = this.page(
                new Query<UserMajorEntity>().getPage(params),
                new QueryWrapper<UserMajorEntity>()
        );

        return new PageUtils(page);
    }

    @Override
    public R getMajorByDepartmentId(Map<String, Object> params) {
        Object object = params.get("departmentId");
        if (ObjectUtils.isEmpty(object)) {
            return R.error("departmentId不能我为 null（空）");
        }
        Long departmentId = Long.valueOf(object.toString());
        // 1、获取 majorId
        List<DepartmentMajorRelationEntity> relationList = departmentMajorRelationDao.selectList(new QueryWrapper<DepartmentMajorRelationEntity>().eq("department_id", departmentId));
        // 2、查询 + 分页
        IPage<UserMajorEntity> page = new Query<UserMajorEntity>().getPage(params);
        List<UserMajorEntity> result = relationList.stream().map(relation -> {
            return this.baseMapper.selectById(relation.getMajorId());
        }).collect(Collectors.toList());
        page.setRecords(result);
        PageUtils pageUtils = new PageUtils(page);
        return R.ok().put("page", pageUtils);
    }

}
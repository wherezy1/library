package com.where.library.member.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.common.utils.R;
import com.where.library.member.dao.DepartmentMajorRelationDao;
import com.where.library.member.dao.UserDepartmentDao;
import com.where.library.member.dao.UserMajorDao;
import com.where.library.member.entity.DepartmentMajorRelationEntity;
import com.where.library.member.entity.UserDepartmentEntity;
import com.where.library.member.entity.UserMajorEntity;
import com.where.library.member.service.DepartmentMajorRelationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@Service("departmentMajorRelationService")
public class DepartmentMajorRelationServiceImpl extends ServiceImpl<DepartmentMajorRelationDao, DepartmentMajorRelationEntity> implements DepartmentMajorRelationService {
    @Autowired
    private UserMajorDao userMajorDao;
    @Autowired
    private UserDepartmentDao userDepartmentDao;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<DepartmentMajorRelationEntity> page = this.page(
                new Query<DepartmentMajorRelationEntity>().getPage(params),
                new QueryWrapper<DepartmentMajorRelationEntity>()
        );

        return new PageUtils(page);
    }

    @Override
    public R getMajorByDepartmentId(Long id) {
        List<DepartmentMajorRelationEntity> relationEntityList = this.baseMapper.selectList(new QueryWrapper<DepartmentMajorRelationEntity>().eq("department_id", id));
        List<Long> collect = relationEntityList.stream().map(relation -> {
            return relation.getMajorId();
        }).collect(Collectors.toList());
        List<UserMajorEntity> majorList = userMajorDao.selectBatchIds(collect);
        return R.ok().put("major", majorList);
    }

    @Override
    public R getDepartmentByMajorId(Long id) {
        List<DepartmentMajorRelationEntity> relationEntityList = this.baseMapper.selectList(new QueryWrapper<DepartmentMajorRelationEntity>().eq("major_id", id));
        List<Long> collect = relationEntityList.stream().map(relation -> {
            return relation.getDepartmentId();
        }).collect(Collectors.toList());
        List<UserDepartmentEntity> majorList = userDepartmentDao.selectBatchIds(collect);
        return R.ok().put("department", majorList);
    }

}
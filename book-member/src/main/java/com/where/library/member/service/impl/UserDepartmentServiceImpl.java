package com.where.library.member.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;

import com.where.library.member.dao.UserDepartmentDao;
import com.where.library.member.entity.UserDepartmentEntity;
import com.where.library.member.service.UserDepartmentService;


@Service("userDepartmentService")
public class UserDepartmentServiceImpl extends ServiceImpl<UserDepartmentDao, UserDepartmentEntity> implements UserDepartmentService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<UserDepartmentEntity> page = this.page(
                new Query<UserDepartmentEntity>().getPage(params),
                new QueryWrapper<UserDepartmentEntity>()
        );

        return new PageUtils(page);
    }

}
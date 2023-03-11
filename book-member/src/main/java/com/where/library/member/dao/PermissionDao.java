package com.where.library.member.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.where.library.member.entity.MenuEntity;
import com.where.library.member.entity.PermissionEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-12-08 19:43:59
 */
@Mapper
public interface PermissionDao extends BaseMapper<PermissionEntity> {

}

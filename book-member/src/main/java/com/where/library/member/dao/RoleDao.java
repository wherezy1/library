package com.where.library.member.dao;

import com.where.library.member.entity.RoleEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 角色表
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-27 14:47:14
 */
@Mapper
public interface RoleDao extends BaseMapper<RoleEntity> {
	
}

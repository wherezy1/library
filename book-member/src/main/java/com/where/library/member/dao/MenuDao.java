package com.where.library.member.dao;

import com.where.library.member.entity.MenuEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 权限表
 * 
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-12-08 19:43:59
 */
@Mapper
public interface MenuDao extends BaseMapper<MenuEntity> {
	
}

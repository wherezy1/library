package com.where.library.auth.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.where.library.auth.entity.UserEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/14/15:16
 * @Description:
 */
@Mapper
public interface UserDao extends BaseMapper<UserEntity> {
    List<String> selectPermsByUserId(@Param("userId") Long userId);
}

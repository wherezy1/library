package com.where.library.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.entity.UserCollectionEntity;

import java.util.Map;

/**
 * 用户书籍收藏表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 17:18:42
 */
public interface UserCollectionService extends IService<UserCollectionEntity> {

    PageUtils queryPage(Map<String, Object> params);

    /**
     * 分页查询用户的收藏列表
     * @param
     * @return
     */
    R getDetail();

}


package com.where.library.member.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.Query;
import com.where.library.common.utils.R;
import com.where.library.member.dao.UserCollectionDao;
import com.where.library.member.dto.BookUserDetailDto;
import com.where.library.member.entity.UserCollectionEntity;
import com.where.library.member.feign.BookFeignService;
import com.where.library.member.interceptor.UserTokenInterceptor;
import com.where.library.member.service.UserCollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Service("userCollectionService")
public class UserCollectionServiceImpl extends ServiceImpl<UserCollectionDao, UserCollectionEntity> implements UserCollectionService {
    @Autowired
    private BookFeignService bookFeignService;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage page = new Query().getPage(params);
        // 1、获取用户id
        Long userId = UserTokenInterceptor.threadLocalUserId.get();
        // 2、查询书籍ids
        List<Long> bookIdList = this.baseMapper.getBookIdList(userId, page.getCurrent() - 1, page.getSize());
        Long[] list = bookIdList.stream().toArray(Long[]::new);
        // 3、远程调用
        R detail = bookFeignService.getBookDetail(list);

        page.setRecords((List) detail.get("list"));
        return new PageUtils(page);
    }


    /// 粗糙没有分页版本
    @Override
    public R getDetail() {
        // 1、获取用户id
        Long userId = UserTokenInterceptor.threadLocalUserId.get();
        // 2、查询书籍id
        List<BookUserDetailDto> list = new ArrayList<>();
        List<UserCollectionEntity> collectionList = this.baseMapper.selectList(new QueryWrapper<UserCollectionEntity>().eq("user_id", userId));
        // 3、获取书籍详细信息
        collectionList.forEach(collection -> {
            Long bookId = collection.getBookId();
            R bookDetail = bookFeignService.getBookDetailById(bookId);
            BookUserDetailDto detail = (BookUserDetailDto) bookDetail.get("detail");
            list.add(detail);
        });
        return R.ok().put("detail", list);
    }

}
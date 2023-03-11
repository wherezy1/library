package com.where.library.member.controller;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.member.entity.UserCollectionEntity;
import com.where.library.member.interceptor.UserTokenInterceptor;
import com.where.library.member.service.UserCollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 用户书籍收藏表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-28 17:18:42
 */
@RestController
@RequestMapping("member/usercollection")
public class UserCollectionController {
    @Autowired
    private UserCollectionService userCollectionService;

    /**
     * 获取收藏详细列表
     */
    @GetMapping("/detail")
    public R getDetail() {
        return userCollectionService.getDetail();
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    // @RequiresPermissions("member:usercollection:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = userCollectionService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{userId}")
    // @RequiresPermissions("member:usercollection:info")
    public R info(@PathVariable("userId") Long userId){
		UserCollectionEntity userCollection = userCollectionService.getById(userId);

        return R.ok().put("userCollection", userCollection);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // @RequiresPermissions("member:usercollection:save")
    public R save(@RequestBody UserCollectionEntity userCollection){
        userCollection.setUserId(UserTokenInterceptor.threadLocalUserId.get());
		userCollectionService.save(userCollection);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // @RequiresPermissions("member:usercollection:update")
    public R update(@RequestBody UserCollectionEntity userCollection){
		userCollectionService.updateById(userCollection);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // @RequiresPermissions("member:usercollection:delete")
    public R delete(@RequestBody Long[] userIds){
		userCollectionService.removeByIds(Arrays.asList(userIds));

        return R.ok();
    }

}

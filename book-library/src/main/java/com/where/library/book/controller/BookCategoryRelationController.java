package com.where.library.book.controller;

import java.util.Arrays;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.where.library.book.entity.BookCategoryRelationEntity;
import com.where.library.book.service.BookCategoryRelationService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;



/**
 * 书籍分类关系表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@RestController
@RequestMapping("library/bookcategoryrelation")
public class BookCategoryRelationController {
    @Autowired
    private BookCategoryRelationService bookCategoryRelationService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    // // // @RequiresPermissions("library:bookcategoryrelation:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = bookCategoryRelationService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{bookId}")
    // // // @RequiresPermissions("library:bookcategoryrelation:info")
    public R info(@PathVariable("bookId") Long bookId){
		BookCategoryRelationEntity bookCategoryRelation = bookCategoryRelationService.getById(bookId);

        return R.ok().put("bookCategoryRelation", bookCategoryRelation);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // // // @RequiresPermissions("library:bookcategoryrelation:save")
    public R save(@RequestBody BookCategoryRelationEntity bookCategoryRelation){
		bookCategoryRelationService.save(bookCategoryRelation);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // // // @RequiresPermissions("library:bookcategoryrelation:update")
    public R update(@RequestBody BookCategoryRelationEntity bookCategoryRelation){
		bookCategoryRelationService.updateById(bookCategoryRelation);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // // // @RequiresPermissions("library:bookcategoryrelation:delete")
    public R delete(@RequestBody Long[] bookIds){
		bookCategoryRelationService.removeByIds(Arrays.asList(bookIds));

        return R.ok();
    }

}

package com.where.library.book.controller;

import com.where.library.book.entity.BookCategoryEntity;
import com.where.library.book.service.BookCategoryService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.Map;




/**
 * 书籍分类
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@RestController
@RequestMapping("library/bookcategory")
public class BookCategoryController {
    @Autowired
    private BookCategoryService bookCategoryService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    // // // @RequiresPermissions("library:bookcategory:list")
    public R list(@RequestBody Map<String, Object> params){
        PageUtils page = bookCategoryService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    // // // @RequiresPermissions("library:bookcategory:info")
    public R info(@PathVariable("id") Long id){
		BookCategoryEntity bookCategory = bookCategoryService.getById(id);

        return R.ok().put("bookCategory", bookCategory);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // // // @RequiresPermissions("library:bookcategory:save")
    public R save(@RequestBody BookCategoryEntity bookCategory){
		bookCategoryService.save(bookCategory);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // // // @RequiresPermissions("library:bookcategory:update")
    public R update(@RequestBody BookCategoryEntity bookCategory){
		bookCategoryService.updateById(bookCategory);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // // // @RequiresPermissions("library:bookcategory:delete")
    public R delete(@RequestBody Long[] ids){
		bookCategoryService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}

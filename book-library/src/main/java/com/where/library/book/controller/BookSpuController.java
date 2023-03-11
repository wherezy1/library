package com.where.library.book.controller;

import java.util.Arrays;
import java.util.Map;


import com.where.library.book.dto.BookDetailDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.where.library.book.entity.BookSpuEntity;
import com.where.library.book.service.BookSpuService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;



/**
 * 图书标准spu表
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@RestController
@RequestMapping("library/bookspu")
public class BookSpuController {
    @Autowired
    private BookSpuService bookSpuService;


    /**
     * 书籍详情信息页
     */
    @GetMapping("/detail/{id}")
    public R getBookDetailIndex(@PathVariable("id") Long id) {
        BookDetailDto detail = bookSpuService.getBookDetailById(id);
        return R.ok().put("detail", detail);
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    // // // @RequiresPermissions("library:bookspu:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = bookSpuService.queryPage(params);
        return R.ok().put("page", page);
    }


    /**
     * 信息 可能用不到
     */
    @RequestMapping("/info/{id}")
    // // // @RequiresPermissions("library:bookspu:info")
    public R info(@PathVariable("id") Long id){
		BookSpuEntity bookSpu = bookSpuService.getById(id);

        return R.ok().put("bookSpu", bookSpu);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // // // @RequiresPermissions("library:bookspu:save")
    public R save(@RequestBody BookSpuEntity bookSpu){
		bookSpuService.save(bookSpu);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // // // @RequiresPermissions("library:bookspu:update")
    public R update(@RequestBody BookSpuEntity bookSpu){
		bookSpuService.updateById(bookSpu);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // // // @RequiresPermissions("library:bookspu:delete")
    public R delete(@RequestBody Long[] ids){
		bookSpuService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}

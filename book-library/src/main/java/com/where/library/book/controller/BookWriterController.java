package com.where.library.book.controller;

import com.where.library.book.entity.BookWriterEntity;
import com.where.library.book.service.BookWriterService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 书籍作者
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@RestController
@RequestMapping("library/bookwriter")
public class BookWriterController {
    @Autowired
    private BookWriterService bookWriterService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    // // // @RequiresPermissions("library:bookwriter:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = bookWriterService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    // // // @RequiresPermissions("library:bookwriter:info")
    public R info(@PathVariable("id") Long id){
		BookWriterEntity bookWriter = bookWriterService.getById(id);

        return R.ok().put("bookWriter", bookWriter);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // // // @RequiresPermissions("library:bookwriter:save")
    public R save(@RequestBody BookWriterEntity bookWriter){
		bookWriterService.save(bookWriter);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // // // @RequiresPermissions("library:bookwriter:update")
    public R update(@RequestBody BookWriterEntity bookWriter){
		bookWriterService.updateById(bookWriter);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // // // @RequiresPermissions("library:bookwriter:delete")
    public R delete(@RequestBody Long[] ids){
		bookWriterService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}

package com.where.library.book.controller;

import com.where.library.book.entity.BookLendInfoEntity;
import com.where.library.book.service.BookLendInfoService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 借阅信息
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@RestController
@RequestMapping("library/booklendinfo")
public class BookLendInfoController {
    @Autowired
    private BookLendInfoService bookLendInfoService;

    /**
     * 查询借阅数量
     */
//    @GetMapping("/dayconut")
//    public R dayConut() {
//        long count = bookLendInfoService.count(new QueryWrapper<BookLendInfoEntity>().ge(""));
//        return R.ok().put("count", count);
//    }

    @GetMapping("/count")
    public R count() {
        long count = bookLendInfoService.count();
        return R.ok().put("count", count);
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    // @RequiresPermissions("library:booklendinfo:list")
    public R list(@RequestBody Map<String, Object> params){
        PageUtils page = bookLendInfoService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    // @RequiresPermissions("library:booklendinfo:info")
    public R info(@PathVariable("id") Long id){
		BookLendInfoEntity bookLendInfo = bookLendInfoService.getById(id);

        return R.ok().put("bookLendInfo", bookLendInfo);
    }

    /**
     * 保存
     */
    @GetMapping("/change")
    // // // @RequiresPermissions("library:booklendinfo:save")
    public R changeStatus(@RequestParam("id") Long id, @RequestParam("status") Integer status){
        return bookLendInfoService.changeStatus(id, status);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // // // @RequiresPermissions("library:booklendinfo:save")
    public R save(@RequestBody BookLendInfoEntity bookLendInfo){
		bookLendInfoService.save(bookLendInfo);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // // // @RequiresPermissions("library:booklendinfo:update")
    public R update(@RequestBody BookLendInfoEntity bookLendInfo){
		bookLendInfoService.updateById(bookLendInfo);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // // // @RequiresPermissions("library:booklendinfo:delete")
    public R delete(@RequestBody Long[] ids){
		bookLendInfoService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}

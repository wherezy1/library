package com.where.library.book.controller;

import java.util.Arrays;
import java.util.Map;

import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.where.library.book.entity.BookSkuEntity;
import com.where.library.book.service.BookSkuService;



/**
 * 书籍sku库存信息
 *
 * @author wherezy
 * @email wherezy@tom.com
 * @date 2022-11-19 22:16:54
 */
@RestController
@RequestMapping("library/booksku")
public class BookSkuController {
    @Autowired
    private BookSkuService bookSkuService;

    /**
     * 列表 返回库存id
     */
    @RequestMapping("/list")
    // // // @RequiresPermissions("library:booksku:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = bookSkuService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    // // // @RequiresPermissions("library:booksku:info")
    public R info(@PathVariable("id") Long id){
		BookSkuEntity bookSku = bookSkuService.getById(id);

        return R.ok().put("bookSku", bookSku);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    // // // @RequiresPermissions("library:booksku:save")
    public R save(@RequestBody BookSkuEntity bookSku){
		bookSkuService.save(bookSku);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    // // // @RequiresPermissions("library:booksku:update")
    public R update(@RequestBody BookSkuEntity bookSku){
		bookSkuService.updateById(bookSku);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    // // // @RequiresPermissions("library:booksku:delete")
    public R delete(@RequestBody Long[] ids){
		bookSkuService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}

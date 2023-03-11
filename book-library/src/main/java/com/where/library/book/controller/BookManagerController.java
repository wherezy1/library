package com.where.library.book.controller;

import com.where.library.book.dto.BookDetailDto;
import com.where.library.book.entity.BookSkuEntity;
import com.where.library.book.feign.SearchFeignService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.book.service.BookManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/24/14:44
 * @Description: 图书管理员访问的controller
 */
@RestController
@RequestMapping("/book/admin")
public class BookManagerController {
    @Autowired
    private BookManagerService bookManagerService;
    @Autowired
    private SearchFeignService searchFeignService;

    /**
     * 查询全部库存信息（返回完善的库存信息） 分页查询
     */
    @PostMapping("/list")
    public R getStockDetailByIds(@RequestBody Map<String, Object> params) {
        PageUtils page = bookManagerService.getAllStockDetail(params);
        return R.ok().put("page", page);
    }

    /**
     * 1、根据库存id查询书本id
     * 2、根据书本id得到书本详细信息
     * 3、将详细信息封装为EsBookEntity
     * 4、调用elasticsearch接口上传信息
     * 查询所有
     * 书籍上架
     */
    @PostMapping("/save")
    public R save(@RequestBody Long[] skuIds) {
        return bookManagerService.save(skuIds);
    }

    @PostMapping("/delete")
    public R delete(@RequestBody Long[] skuIds) {
        return bookManagerService.delete(skuIds);
    }

    /**
     * 增加或者减少库存
     */
    @PostMapping("/change/stock")
    public R changeStock(@RequestBody BookSkuEntity skuEntity) {
        return bookManagerService.changeStock(skuEntity);
    }

    /**
     * 购书
     */
    @PostMapping("/purchase")
    public R purchase(@RequestBody @Validated BookDetailDto book) {
        bookManagerService.addBook(book);
        return R.ok("购书成功");
    }

}

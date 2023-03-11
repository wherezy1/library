package com.where.library.book.controller;

import com.where.library.book.dto.BookUserDetailDto;
import com.where.library.book.service.BookUserService;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/26/15:09
 * @Description: 用户 对书籍操作的controller
 */
@RestController
@RequestMapping("/book/user")
public class BookUserController {
    @Autowired
    private BookUserService bookUserService;

    /*
    * 传递分页参数 （可以不传）
    * */
    @PostMapping("/list")
    @ResponseBody
    public R getBookUserList(@RequestBody Map<String, Object> param) {
        PageUtils page = bookUserService.getBookUserList(param);
        return R.ok().put("page", page);
    }

    /**
     * 书籍详情信息页 List
     */
    @PostMapping("/detail")
    @ResponseBody
    public R getBookDetail(@RequestBody Long[] id) {
        return bookUserService.getBookUserDetail(id);
    }

    /**
     * 书籍详情信息页
     */
    @GetMapping("/detail/{id}")
    @ResponseBody
    public R getBookDetailById(@PathVariable Long id) {
        BookUserDetailDto detail = bookUserService.getBookUserDetailById(id);
        return R.ok().put("detail", detail);
    }

    /**
     * 借书 通过bookIds
     */
    @PostMapping("/lend")
    public R lendBookByIds(@RequestBody Long[] skuIds) {
        return bookUserService.lendBookByIds(skuIds);
    }

    /**
     * 还书 通过bookIds
     */
    @PostMapping("/return")
    public R returnBookByIds(@RequestBody Long[] skuIds) {
        return bookUserService.returnBookByIds(skuIds);
    }
}

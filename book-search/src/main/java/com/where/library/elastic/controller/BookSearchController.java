package com.where.library.elastic.controller;

import com.where.library.common.utils.PageUtils;
import com.where.library.elastic.dto.SearchParam;
import com.where.library.elastic.service.BookSearchService;
import com.where.library.common.utils.R;
import com.where.library.elastic.entity.ESBookEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/24/15:59
 * @Description: book-search控制器
 */
@RestController
@RequestMapping("/book/elastic")
public class BookSearchController {
    @Autowired
    private BookSearchService bookSearchService;

    @PostMapping("/save")
    public R save(@RequestBody List<ESBookEntity> esBookEntityList) {
        return bookSearchService.save(esBookEntityList);
    }

    @GetMapping("/delete/{id}")
    public R delete(@PathVariable Long id) {
        Long[] longs = new Long[1];
        longs[0] = id;
        return bookSearchService.delete(longs);
    }

    /**
     * 批量删除
     * @param ids
     * @return
     */
    @PostMapping("/delete")
    public R delete(@RequestBody Long[] ids) {
        return bookSearchService.delete(ids);
    }

    /**
     * 根据关键词 分页查询
     */
    @PostMapping("/search")
    public R search(@RequestBody SearchParam searchParam) {
        PageUtils page = null;
        try {
            page = bookSearchService.search(searchParam);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return R.ok().put("page", page);
    }
}

package com.where.library.book.feign;

import com.where.library.common.utils.R;
import com.where.library.book.entity.es.ESBookEntity;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/24/15:18
 * @Description: Book模块远程调用ElasticSearch模块
 */
@FeignClient("book-search")
public interface SearchFeignService {
    /**
     * 书籍上架方法
     * @param
     * @return
     */
    @PostMapping("book/elastic/save")
    R save(@RequestBody List<ESBookEntity> esBookEntityList);

    /**
     * 批量删除
     * @param ids
     * @return
     */
    @PostMapping("/book/elastic/delete")
    R delete(@RequestBody Long[] ids);

}

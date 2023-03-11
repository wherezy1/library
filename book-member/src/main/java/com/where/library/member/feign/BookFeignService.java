package com.where.library.member.feign;

import com.where.library.common.utils.R;
import com.where.library.member.interceptor.OpenFeignInterceptor;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/27/15:32
 * @Description: 书籍模块的远程调用 service
 */
@FeignClient(value = "book", configuration = OpenFeignInterceptor.class)
public interface BookFeignService {
    /**
     * 借书 通过bookIds
     */
    @PostMapping("/book/user/lend")
    R lendBookByIds(@RequestBody Map<String, Object> param);

    /**
     * 还书 通过bookIds
     */
    @PostMapping("/book/user/return")
    R returnBookByIds(@RequestBody Map<String, Object> params);

    /**
     * 用户获取书籍详细信息
     */
    @GetMapping("/book/user/detail/{id}")
    R getBookDetailById(@PathVariable("id") Long id);

    /**
     * 书籍详情信息页 List
     */
    @PostMapping("/book/user/detail")
    @ResponseBody
    R getBookDetail(@RequestBody Long[] id) ;
}

package com.where.library.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/12/05/17:33
 * @Description:
 */
@RestController
@RequestMapping("/test")
public class TestController {

    @GetMapping
    public void testGet(@RequestParam Map<String, Object> params) {
        Set<Map.Entry<String, Object>> entries = params.entrySet();
        Iterator<Map.Entry<String, Object>> iterator = entries.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator);
        }
    }
}

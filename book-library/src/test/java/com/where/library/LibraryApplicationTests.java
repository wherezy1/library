package com.where.library;

import com.where.library.book.dao.BookSpuDao;
import com.where.library.book.dto.BookDetailDto;
import com.where.library.book.service.BookManagerService;
import com.where.library.book.service.BookSpuService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.HashMap;
import java.util.List;

@SpringBootTest
class LibraryApplicationTests {
    @Autowired
    private BookManagerService managerService;
    @Autowired
    private BookSpuService bookSpuService;
    @Autowired
    private BookSpuDao bookSpuDao;

    @Test
    void contextLoads() {
        HashMap<String, Object> map = new HashMap<>();
        long[] ids = {1,2,3,4,5};
        Long[] l = new Long[5];
        map.put("skuIds", ids);

        managerService.getAllStockDetail(map);
    }

    @Test
    void testGetAllBookDetail() {
        List<BookDetailDto> allBookDetail = bookSpuDao.getAllBookDetail(1, 10);
        for (BookDetailDto bookDetailDto : allBookDetail) {
            System.out.println(bookDetailDto);
        }

//        bookSpuService.getAllBookDetail(param);
    }

}

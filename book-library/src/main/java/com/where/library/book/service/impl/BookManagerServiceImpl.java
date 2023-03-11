package com.where.library.book.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.where.library.book.dao.*;
import com.where.library.book.entity.*;
import com.where.library.book.entity.es.ESBookEntity;
import com.where.library.common.utils.Constant;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.book.dto.BookDetailDto;
import com.where.library.book.feign.SearchFeignService;
import com.where.library.book.service.BookManagerService;
import com.where.library.book.service.BookSpuService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/24/15:07
 * @Description:
 */
@Service
public class BookManagerServiceImpl implements BookManagerService {
    @Autowired
    private BookSkuDao bookSkuDao;
    @Autowired
    private BookSpuDao bookSpuDao;
    @Autowired
    private BookWriterDao writerDao;
    @Autowired
    private BookCategoryDao bookCategoryDao;
    @Autowired
    private BookCategoryRelationDao categoryRelationDao;
    @Autowired
    private SearchFeignService searchFeignService;
    @Autowired
    private ThreadPoolExecutor executor;
    @Autowired
    private BookSpuService bookSpuService;


    /**
     * 分页查询 所有
     * @param param 存入查询要求 ： pageSize, pageNum
     * @return
     */
    @Override
    public PageUtils getAllStockDetail(Map<String, Object> param) {
        return bookSpuService.getAllBookDetail(param);
    }
    /*
    Long[] skuIds = (Long[]) param.get("skuIds");
        if (ArrayUtils.isEmpty(skuIds)) {
            return null;
        }
        // 1、查询所有
        List<ESBookEntity> allStockDetail = getAllStockDetail(skuIds);
        List<BookDetailDto> bookDetailDtoList = new ArrayList<>();
        for (ESBookEntity esBookEntity : allStockDetail) {
            BookDetailDto bookDetailDto = new BookDetailDto();
            BeanUtils.copyProperties(esBookEntity, bookDetailDto);
            // 完善信息
            if (esBookEntity.getHasStock()) {
                BookSkuEntity skuEntity = bookSkuDao.selectById(esBookEntity.getId());
                bookDetailDto.setStock(skuEntity.getStock());
            }
            bookDetailDtoList.add(bookDetailDto);
        }
        // IPage --> pageUtils
        IPage page = new Query().getPage(param);
        int start = (int) (page.getCurrent() - 1);
        if (start != 0) start *= page.getSize();
        System.out.println(start);
        // 2、分割数据
        List<ESBookEntity> res = allStockDetail.subList(start, start + (int) page.getSize());
        page.setRecords(res);
        return new PageUtils(page);
     */

    /**
     * 1、查询skuId库存
     * 2、传递给Search保存
     *
     * @param skuIds 通过skuId查询库存信息
     * @return
     */
    @Override
    public R save(Long[] skuIds) {
        if (ObjectUtils.isEmpty(skuIds)) {
            return R.error("查询库存失败，请检查输入！");
        } else {
            // 1、查询所有
            List<ESBookEntity> esBookEntityList = getAllStockDetail(skuIds);
            // 2、更改书籍状态 创建异步任务交个 executor执行
            CompletableFuture<Void> updateStatus = CompletableFuture.runAsync(() -> {
                Arrays.stream(skuIds).forEach(skuId -> {
                    BookSkuEntity bookSkuEntity = bookSkuDao.selectById(skuId);
                    Long bookId = bookSkuEntity.getBookId();
                    BookSpuEntity bookSpuEntity = new BookSpuEntity();
                    bookSpuEntity.setStatus(1);
                    bookSpuDao.update(bookSpuEntity, new QueryWrapper<BookSpuEntity>().eq("id", bookId));
                });
            }, executor);
            // 3、调用search的feign接口进行保存
            CompletableFuture<R> searchFuture = CompletableFuture.supplyAsync(() -> {
                return searchFeignService.save(esBookEntityList);
            }, executor);
            // 4、返回消息 （错误信息 / 正确信息封装）

            try {
                return searchFuture.get();
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (ExecutionException e) {
                e.printStackTrace();
            }
            return R.error("发生未知异常");
        }
    }

    @Override
    @Transactional
    public void addBook(BookDetailDto bookDetailDto) {
        Long bookId = bookDetailDto.getId();
        // 1、检查 + 创建BookSpuEntity
        BookSpuEntity bookSpuEntity = bookSpuDao.selectById(bookId);
        if (bookSpuEntity == null) {
            addBook(bookDetailDto, bookSpuEntity);
        } else {
            updateBook(bookDetailDto, bookSpuEntity);
        }
        // 2、检查 + 创建BookSkuEntity

        // 3、检查 + 创建作者BookWriterEntity
    }

    @Override
    public R changeStock(BookSkuEntity skuEntity) {
        int id = bookSkuDao.update(skuEntity, new QueryWrapper<BookSkuEntity>().eq("book_id", skuEntity.getBookId()));
        if (id > 0) {
            return R.ok("库存更新成功");
        }
        return R.ok("更新库存失败 ");
    }

    /**
     *
     */
    private void addBook(BookDetailDto bookDetailDto, BookSpuEntity bookSpuEntity) {
        Long id = bookDetailDto.getId();
        Long categoryId = bookDetailDto.getCategoryId();
        String category = bookDetailDto.getCategory();
        Long writerId = bookDetailDto.getWriterId();
        String writer = bookDetailDto.getWriter();
        Long stock = bookDetailDto.getStock();

        // 1、添加BookSpuEntity
        BeanUtils.copyProperties(bookDetailDto, bookSpuEntity);
        //获取当前时间
        LocalDateTime date = LocalDateTime.now();
        //创建日期时间对象格式化器，日期格式类似： 2020-02-23 22:18:38
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(Constant.DATA_FORMAT);
        //将时间转化为对应格式的字符串
        String formatDate = date.format(formatter).toString();
        bookDetailDto.setInputTime(formatDate);
        bookSpuDao.insert(bookSpuEntity);
        // 2、添加BookSkuEntity
        BookSkuEntity bookSkuEntity = new BookSkuEntity();
        BookSkuEntity sku = bookSkuDao.selectOne(new QueryWrapper<BookSkuEntity>().eq("brand_id", id));
        if (ObjectUtils.isEmpty(sku)) {
            bookSkuEntity.setBookId(id);
            bookSkuEntity.setStock(stock);
        }
        bookSkuDao.insert(bookSkuEntity);

        // 3、添加BookCategoryEntity
        BookCategoryEntity bookCategoryEntity = bookCategoryDao.selectById(categoryId);
        if (ObjectUtils.isEmpty(bookCategoryEntity)) {
            bookCategoryEntity.setId(categoryId);
            bookCategoryEntity.setCategory(category);
            bookCategoryDao.insert(bookCategoryEntity);
        }
        // 4、添加BookCategoryRelationEntity
        BookCategoryRelationEntity relationEntity = categoryRelationDao.selectOne(new QueryWrapper<BookCategoryRelationEntity>()
                .eq("book_id", id)
                .eq("category_id", categoryId));
        if (ObjectUtils.isEmpty(relationEntity)) {
            relationEntity.setBookId(id);
            relationEntity.setCategoryId(categoryId);

            categoryRelationDao.insert(relationEntity);
        }
        // 5、添加作者
        BookWriterEntity bookWriterEntity = writerDao.selectById(writerId);
        if (ObjectUtils.isEmpty(bookWriterEntity)) {
            bookWriterEntity.setId(writerId);
            bookWriterEntity.setWriter(writer);
            writerDao.insert(bookWriterEntity);
        }
    }

    /**
     * 更新已存在的信息 --- 特指库存
     * @param bookDetailDto
     * @param bookSpuEntity
     */
    private void updateBook(BookDetailDto bookDetailDto, BookSpuEntity bookSpuEntity) {
        Long bookId = bookDetailDto.getId();
        bookDetailDto.getStock();
        BookSkuEntity bookSkuEntity = new BookSkuEntity();
        bookSkuEntity.setStock(bookDetailDto.getStock());
        bookSkuDao.update(bookSkuEntity, new QueryWrapper<BookSkuEntity>().eq("brand_id", bookId));
    }

    /**
     * 查询所有库存详情
     *
     * @param skuIds
     * @return
     */
    private List<ESBookEntity> getAllStockDetail(Long[] skuIds) {
        List<ESBookEntity> esBookEntityList = new ArrayList<>();
        for (Long id : skuIds) {
            // 1、根据sku_id 查出书籍id
            BookSkuEntity bookSku = bookSkuDao.selectById(id);
            if (ObjectUtils.isEmpty(bookSku)) {
                continue;
            }
            Long bookId = bookSku.getBookId();
            BookSpuEntity bookSpu = bookSpuDao.selectById(bookId);
            ESBookEntity esBookEntity = generator(bookSku, bookSpu);
            // 添加数组
            esBookEntityList.add(esBookEntity);
        }
        return esBookEntityList;
    }


    /**
     * 封装信息
     *
     * @param bookSku
     * @param bookSpu
     * @return
     */
    private ESBookEntity generator(BookSkuEntity bookSku, BookSpuEntity bookSpu) {
        if (ObjectUtils.isEmpty(bookSku) || ObjectUtils.isEmpty(bookSpu)) {
            return null;
        }
        ESBookEntity esBookEntity = new ESBookEntity();
        BeanUtils.copyProperties(bookSpu, esBookEntity);
        // 设置分类
        BookCategoryRelationEntity categoryRelation = categoryRelationDao.selectOne(new QueryWrapper<BookCategoryRelationEntity>().eq("book_id", bookSku.getBookId()));
        if (!ObjectUtils.isEmpty(categoryRelation)) {
            BookCategoryEntity bookCategoryEntity = bookCategoryDao.selectById(categoryRelation.getCategoryId());
            if (!ObjectUtils.isEmpty(bookCategoryEntity)) {
                esBookEntity.setCategoryId(bookCategoryEntity.getId());
                esBookEntity.setCategory(bookCategoryEntity.getCategory());
            }
        }
        // 设置库存

        esBookEntity.setSkuId(bookSku.getId());;
        if (bookSku.getStock() > 0) {
            esBookEntity.setHasStock(true);
        } else {
            esBookEntity.setHasStock(false);
        }
        // 设置作者
        Long writerId = bookSpu.getWriterId();
        BookWriterEntity bookWriterEntity = writerDao.selectById(bookSpu.getWriterId());
        esBookEntity.setWriterId(writerId);
        esBookEntity.setWriter(bookWriterEntity.getWriter());
        return esBookEntity;
    }

    @Override
    public R delete(Long[] skuIds) {
        R delete = searchFeignService.delete(skuIds);
        if (delete.getCode() == 200) {
            for (Long skuId : skuIds) {
                BookSkuEntity bookSkuEntity = bookSkuDao.selectById(skuId);
                BookSpuEntity bookSpuEntity = new BookSpuEntity();
                bookSpuEntity.setStatus(0);
                bookSpuEntity.setId(bookSkuEntity.getBookId());
                int i = bookSpuDao.updateById(bookSpuEntity);
            }
        }
        return delete;
    }
}

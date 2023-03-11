package com.where.library.elastic.service.impl;

import com.alibaba.fastjson.JSON;
import com.where.library.common.constant.EsConstant;
import com.where.library.common.utils.PageUtils;
import com.where.library.common.utils.R;
import com.where.library.elastic.dto.SearchParam;
import com.where.library.elastic.entity.ESBookEntity;
import com.where.library.elastic.repository.BookRepository;
import com.where.library.elastic.service.BookSearchService;
import org.apache.lucene.search.TotalHits;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.reindex.DeleteByQueryRequest;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.sort.SortBuilders;
import org.elasticsearch.search.sort.SortOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.core.ElasticsearchRestTemplate;
import org.springframework.data.elasticsearch.core.query.NativeSearchQueryBuilder;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/24/17:02
 * @Description:
 */
@Service
public class BookSearchServiceImpl implements BookSearchService {
    /**
     * search
     */
    @Autowired
    private ElasticsearchRestTemplate elasticsearchRestTemplate;
    @Autowired
    private RestHighLevelClient restClient;
    @Autowired
    private BookRepository bookRepository;

    public boolean createIndex() {
        Class classType = new ESBookEntity().getClass();
        if (elasticsearchRestTemplate.indexExists(classType))
            return true;
        boolean index = elasticsearchRestTemplate.createIndex(classType);
        boolean mapping = elasticsearchRestTemplate.putMapping(classType);
        return index && mapping;
    }


    @Override
    public R save(List<ESBookEntity> esBookEntityList) {
        // TODO 是否需要先创建映射
        createIndex();
        Iterable<ESBookEntity> esBookEntities = bookRepository.saveAll(esBookEntityList);
        Iterator<ESBookEntity> iterator = esBookEntities.iterator();
        int result = 0;
        while (iterator.hasNext()) {
            result++;
            iterator.next();
        }
        if (result == esBookEntityList.size())
            return R.ok("上架成功");
        else if (result > 0){
            return R.error("部分上架成功");
        } else {
            return R.error("上架失败");
        }
    }

    @Override
    public PageUtils search(SearchParam searchParam) {
//        createIndex();
//        // 1、构建dsl查询语句
//        // 2、构建查询请求
//        NativeSearchQueryBuilder queryBuilder = new NativeSearchQueryBuilder();
//        builderQuery(queryBuilder, searchParam);    // 应该不可能为null吧
//        // 3、得到查询结果
//        Page<ESBookEntity> result = this.bookRepository.search(queryBuilder.build());
//        // 4、构建返回结果
//        // 将org.springframework.data.domain.Page 转为PageUtil

        // 测试 bingo
        SearchSourceBuilder sourceBuilder = new SearchSourceBuilder();
        builderSourceQuery(sourceBuilder, searchParam);
        SearchRequest searchRequest = new SearchRequest(new String[]{EsConstant.indexName}, sourceBuilder);
        RequestOptions build = RequestOptions.DEFAULT.toBuilder().build();
        List<ESBookEntity> bookEntityList = null;
        SearchResponse search = null;
        try {
            search = restClient.search(searchRequest, build);
            bookEntityList = buildResult(search);
//            System.out.println(search);
        } catch (IOException e) {
            e.printStackTrace();
        }
        PageUtils pageUtils = new PageUtils();
        pageUtils.setList(bookEntityList);
        return pageUtils;
    }

    private List<ESBookEntity> buildResult(SearchResponse search) {
        List<ESBookEntity> result = new ArrayList<>();
        SearchHits hits = search.getHits();
        TotalHits totalHits = hits.getTotalHits();
        long value = totalHits.value;
        for (SearchHit hit : hits.getHits()) {
//            Class<? extends SearchHits> aClass = hits.getClass();
            ESBookEntity esBookEntity = JSON.parseObject(hit.getSourceAsString(), ESBookEntity.class);
            result.add(esBookEntity);
        }
        return result;
    }

    private void builderSourceQuery(SearchSourceBuilder queryBuilder, SearchParam searchParam) {
        // 1、分页
        Integer pageSize = 10;
        Integer pageNum = 0;
        if (searchParam.getPageNum() != null) {
            pageNum = searchParam.getPageNum();
        }
        if (searchParam.getPageSize() != null) {
            pageSize = searchParam.getPageSize();
        }
        Pageable pageable = PageRequest.of(pageNum, pageSize);
        queryBuilder.from(pageNum);
        queryBuilder.size(pageSize);
        // 2、关键词模糊查询
        BoolQueryBuilder boolQueryBuilder = new BoolQueryBuilder();

        // 关键词可能为：书名，出版社名，作者名，
        if (searchParam.getKeyword() != null) {
            boolQueryBuilder.must(QueryBuilders.matchQuery("bookName", searchParam.getKeyword()));
        }
        if (searchParam.getPublisher() != null) {
            boolQueryBuilder.must(QueryBuilders.matchQuery("publisher", searchParam.getPublisher()));
        }
        queryBuilder.query(boolQueryBuilder);
        // 3、根据id精准查询
        if (!ObjectUtils.isEmpty(searchParam.getBrandId())) {
            queryBuilder.query(QueryBuilders.termQuery("writerId", searchParam.getWriterId()));
        }
        if (!ObjectUtils.isEmpty(searchParam.getWriterId())) {
            queryBuilder.query(QueryBuilders.termQuery("writerId", searchParam.getWriterId()));
        }
        if (!ObjectUtils.isEmpty(searchParam.getCategoryId())) {
            queryBuilder.query(QueryBuilders.termQuery("categoryId", searchParam.getCategoryId()));
        }
        // 4、排序
        String sort = searchParam.getSort();
        SortOrder sortOrder = null;
        if (sort != null) {
            if (SortOrder.DESC.toString().equals(sort)) {
                sortOrder = SortOrder.DESC;
            } else
                sortOrder = SortOrder.ASC;
        } else {
            sortOrder = SortOrder.DESC;
        }
        queryBuilder.sort(SortBuilders.fieldSort("id").order(sortOrder));
    }
    private void builderQuery(NativeSearchQueryBuilder queryBuilder, SearchParam searchParam) {
        // 1、分页
        Integer pageSize = 10;
        Integer pageNum = 0;
        if (searchParam.getPageNum() != null) {
            pageNum = searchParam.getPageNum();
        }
        if (searchParam.getPageSize() != null) {
            pageSize = searchParam.getPageSize();
        }
        Pageable pageable = PageRequest.of(pageNum, pageSize);
        queryBuilder.withPageable(pageable);
        // 2、关键词模糊查询
        // 关键词可能为：书名，出版社名，作者名，
        if (searchParam.getKeyword() != null) {
            queryBuilder.withQuery(QueryBuilders.matchQuery("bookName", searchParam.getKeyword()));
            queryBuilder.withQuery(QueryBuilders.matchQuery("publisher", searchParam.getKeyword()));
            queryBuilder.withQuery(QueryBuilders.matchQuery("writer", searchParam.getKeyword()));
            queryBuilder.withQuery(QueryBuilders.matchQuery("category", searchParam.getKeyword()));
        } else {
            queryBuilder.withQuery(QueryBuilders.matchAllQuery());
        }
        // 3、根据id精准查询
        if (!ObjectUtils.isEmpty(searchParam.getWriterId())) {
            queryBuilder.withQuery(QueryBuilders.termQuery("writerId", searchParam.getWriterId()));
        }
        if (!ObjectUtils.isEmpty(searchParam.getCategoryId())) {
            queryBuilder.withQuery(QueryBuilders.termQuery("categoryId", searchParam.getCategoryId()));
        }
        // 4、排序
        String sort = searchParam.getSort();
        SortOrder sortOrder = null;
        if (sort != null) {
            if (SortOrder.DESC.toString().equals(sort)) {
                sortOrder = SortOrder.DESC;
            } else
                sortOrder = SortOrder.ASC;
        } else {
            sortOrder = SortOrder.DESC;
        }
        queryBuilder.withSort(SortBuilders.fieldSort("id").order(sortOrder));
    }

    /*
    * @Override
    public Page<EsProduct> search(String keyword, Long brandId, Long productCategoryId, Integer pageNum, Integer pageSize,Integer sort) {
        Pageable pageable = PageRequest.of(pageNum, pageSize);
        NativeSearchQueryBuilder nativeSearchQueryBuilder = new NativeSearchQueryBuilder();
        //分页
        nativeSearchQueryBuilder.withPageable(pageable);
        //过滤
        if (brandId != null || productCategoryId != null) {
            BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
            if (brandId != null) {
                boolQueryBuilder.must(QueryBuilders.termQuery("brandId", brandId));
            }
            if (productCategoryId != null) {
                boolQueryBuilder.must(QueryBuilders.termQuery("productCategoryId", productCategoryId));
            }
            nativeSearchQueryBuilder.withFilter(boolQueryBuilder);
        }
        //搜索
        if (StringUtils.isEmpty(keyword)) {
            nativeSearchQueryBuilder.withQuery(QueryBuilders.matchAllQuery());
        } else {
            List<FunctionScoreQueryBuilder.FilterFunctionBuilder> filterFunctionBuilders = new ArrayList<>();
            filterFunctionBuilders.add(new FunctionScoreQueryBuilder.FilterFunctionBuilder(QueryBuilders.matchQuery("name", keyword),
                    ScoreFunctionBuilders.weightFactorFunction(10)));
            filterFunctionBuilders.add(new FunctionScoreQueryBuilder.FilterFunctionBuilder(QueryBuilders.matchQuery("subTitle", keyword),
                    ScoreFunctionBuilders.weightFactorFunction(5)));
            filterFunctionBuilders.add(new FunctionScoreQueryBuilder.FilterFunctionBuilder(QueryBuilders.matchQuery("keywords", keyword),
                    ScoreFunctionBuilders.weightFactorFunction(2)));
            FunctionScoreQueryBuilder.FilterFunctionBuilder[] builders = new FunctionScoreQueryBuilder.FilterFunctionBuilder[filterFunctionBuilders.size()];
            filterFunctionBuilders.toArray(builders);
            FunctionScoreQueryBuilder functionScoreQueryBuilder = QueryBuilders.functionScoreQuery(builders)
                    .scoreMode(FunctionScoreQuery.ScoreMode.SUM)
                    .setMinScore(2);
            nativeSearchQueryBuilder.withQuery(functionScoreQueryBuilder);
        }*/

    @Override
    public R delete(Long[] ids) {
        int l = ids.length, i = 0;
        for (Long id : ids) {
            DeleteByQueryRequest deleteRequest = new DeleteByQueryRequest(EsConstant.indexName);
            deleteRequest.setQuery(QueryBuilders.termQuery("id", id));
            try {
                restClient.deleteByQuery(deleteRequest, RequestOptions.DEFAULT);
                i++;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
//        for (Long id : ids) {
//            i++;
//            // TODO 可能版本问题 不是 Long类型
//            bookRepository.deleteById(String.valueOf(id));
//        }
        if (l == i) {
            return R.ok("下架成功");
        }
        return R.error("下架失败");
    }

}

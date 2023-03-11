package com.where.library.elastic.repository;

import com.where.library.elastic.entity.ESBookEntity;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/23/16:03
 * @Description:
 */
public interface BookRepository extends ElasticsearchRepository<ESBookEntity, String> {
//    List<ESBookEntity> findByTitleOrAuthor(String title, String author);

//    @Highlight(fields = {
//            @HighlightField(name = "title"),
//            @HighlightField(name = "author")
//    })
//    @Query("{\"match\": { title: \"?0\"}}")
//    SearchHits<ESBookEntity> find(String keyword);
}
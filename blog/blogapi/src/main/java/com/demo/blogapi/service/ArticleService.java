package com.demo.blogapi.service;

import com.demo.blogapi.vo.Result;
import com.demo.blogapi.vo.params.ArticleParam;
import com.demo.blogapi.vo.params.PageParams;

import java.util.List;

/**
 * @author Cbo
 * @date 2022/11/15 0015 19:12
 */

public interface ArticleService {
    Result listArticle(PageParams pageParams);

    Result hotArticle(int limit);

    Result newArticle(int limit);

    Result listArchives();

    Result findArticleById(Long articleId);

    Result publish(ArticleParam articleParam);
}

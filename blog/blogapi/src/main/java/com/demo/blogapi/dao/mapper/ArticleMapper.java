package com.demo.blogapi.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.demo.blogapi.dao.pojo.Article;
import com.demo.blogapi.dao.dos.Archives;

import java.util.List;

/**
 * @author Cbo
 * @date 2022/11/15 0015 18:47
 */
public interface ArticleMapper extends BaseMapper<Article> {


    List<Archives>  listArchives();

    IPage<Article> listArticle(Page<Article> page, Long categoryId, Long tagId, String year, String month);
}

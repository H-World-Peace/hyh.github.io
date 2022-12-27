package com.demo.blogapi.controller;

import com.demo.blogapi.vo.params.ArticleParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Cbo
 * @date 2022/11/15 0015 18:57
 */
import com.demo.blogapi.dao.pojo.Article;
import com.demo.blogapi.service.ArticleService;
//import com.demo.blogapi.vo.Archive;
import com.demo.blogapi.vo.ArticleVo;
import com.demo.blogapi.vo.Result;
import com.demo.blogapi.vo.params.PageParams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("articles")
public class ArticleController {

    @Autowired
    private ArticleService articleService;
    //Result是统一结果返回
    @PostMapping
    public Result articles(@RequestBody PageParams pageParams) {
        //ArticleVo 页面接收的数据
      //   articleService.listArticle(pageParams);
System.out.println("*****"+pageParams.getPage());
System.out.println(""+pageParams.getPageSize());
        return  articleService.listArticle(pageParams);
    }


    /**
     * 最热文章
     */
    @PostMapping("hot")
    public Result hotArticle(){
        int limit = 5;

        return articleService.hotArticle(limit);
    }
    /**
     * 最新文章
     */
    @PostMapping("new")
    public Result newArticle(){
        int limit = 5;

        return articleService.newArticle(limit);
    }
    /**
     *  文章归档
     */
    @PostMapping("listArchives")
    public Result listArchives(){
        return articleService.listArchives();
    }

/**
 *查看谋篇文章
 */
    @PostMapping("view/{id}")
    public Result findArticleById(@PathVariable("id") Long articleId){
        return articleService.findArticleById(articleId);
    }


    /**
     *发布文章
     */
    @PostMapping("publish")
    public Result publish(@RequestBody ArticleParam articleParam){
        System.out.println(articleParam);
        return articleService.publish(articleParam);
    }



}


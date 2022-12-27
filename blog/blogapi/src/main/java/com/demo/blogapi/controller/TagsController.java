package com.demo.blogapi.controller;


import com.demo.blogapi.service.ArticleService;
import com.demo.blogapi.service.TagService;


import com.demo.blogapi.vo.Result;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


//@RestController代表我们返回的是json数据,@RequestMapping("tags")表示路径映射
@RestController
@RequestMapping("tags")
public class TagsController {

    @Autowired
    private TagService tagService;
    @Autowired
    ArticleService articleService;


    /**
     * 最热标签
     */
    @GetMapping("hot")
    public Result hot() {
        int limit = 6;
        return tagService.hots(limit);
    }



    /**
     * 查询所有的文章标签
     */
    @GetMapping
    public Result findAll() {

        return tagService.findAll();
    }

    @GetMapping("detail")
    public Result findAllDetail(){
        return tagService.findAllDetail();
    }
    @GetMapping("detail/{id}")
    public Result findADetailById(@PathVariable("id") Long id){
        /**
         * 查询所有文章标签下所有的文章
         * @return
         */
        return tagService.findDetailById(id);
    }


}


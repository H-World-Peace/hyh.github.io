package com.demo.blogapi.controller;

/**
 * @author Cbo
 * @date 2022/11/22 0022 20:31
 */
import com.demo.blogapi.service.CategoryService;
import com.demo.blogapi.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("categorys")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping
    public Result listCategory() {
        return categoryService.findAll();
    }


    /**
     *返回详细分类
     */
    @GetMapping("detail")
    public Result categoriesDetail(){
        return categoryService.findAllDetail();
    }


    @GetMapping("detail/{id}")
    public Result categoriesDetailById(@PathVariable("id") Long id){
        return categoryService.categoriesDetailById(id);
    }



}
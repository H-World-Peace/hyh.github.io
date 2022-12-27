package com.demo.blogapi.service;

import com.demo.blogapi.vo.CategoryVo;
import com.demo.blogapi.vo.Result;

/**
 * @author Cbo
 * @date 2022/11/19 0019 14:14
 */
public interface CategoryService {
    CategoryVo findCategoryById(Long id);

    /**
 *查找写文章时所有的类别
 */
    Result findAll();

    Result findAllDetail();



    Result categoriesDetailById(Long id);
}

package com.demo.blogapi.service;

import com.demo.blogapi.vo.Result;
import com.demo.blogapi.vo.TagVo;

import java.util.List;

/**
 * @author Cbo
 * @date 2022/11/15 0015 21:37
 */
public interface TagService {
    List<TagVo> findTagsByArticleId(long articleId);

    Result hots(int limit);

    Result findAll();

    Result findAllDetail();

    Result findDetailById(Long id);
}

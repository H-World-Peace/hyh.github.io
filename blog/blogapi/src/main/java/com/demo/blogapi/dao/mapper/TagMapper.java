package com.demo.blogapi.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.demo.blogapi.dao.pojo.Tag;

import java.util.List;

/**
 * @author Cbo
 * @date 2022/11/15 0015 18:47
 */
public interface TagMapper extends BaseMapper<Tag> {
    List<Tag> findTagsByArticleId(Long articleId);



    List<Tag> findTagsByTagIds(List<Long> tagIds);

    List<Long> findHotsTagIds (int limit);
}

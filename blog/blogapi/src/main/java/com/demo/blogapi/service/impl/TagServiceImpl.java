package com.demo.blogapi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.CollectionUtils;
import com.demo.blogapi.dao.mapper.TagMapper;
import com.demo.blogapi.dao.pojo.Tag;
import com.demo.blogapi.service.TagService;
import com.demo.blogapi.vo.Result;
import com.demo.blogapi.vo.TagVo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * @author Cbo
 * @date 2022/11/15 0015 21:40
 */
@Service
public class TagServiceImpl implements TagService {
   @Autowired
   private TagMapper tagMapper;
    @Override
    public List<TagVo> findTagsByArticleId(long articleId) {
        //mybatisplus无法进行多表查询
        List<Tag> tags = tagMapper.findTagsByArticleId(articleId);
        return copyList(tags);
    }




    private List<TagVo> copyList(List<Tag> tagList) {
        List<TagVo> tagVoList = new ArrayList<>();
        for (Tag tag : tagList) {
            tagVoList.add(copy(tag));
        }
        return tagVoList;

    }

    private TagVo copy(Tag tag) {
        TagVo tagVo = new TagVo();
        BeanUtils.copyProperties(tag, tagVo);
        return tagVo;
    }

    @Override
    public Result hots(int limit) {
        /**
         * 最热标签就是对标签ms_article_tag中的tag_id进行排序数量最多的就是我们的最热标签
         * 1、标签所拥有的文章数量最多就是最热标签
         * 2、查询 根据tag_id分组计数，从大到小排列取前limit个
         */
        List<Long> tagIds = tagMapper.findHotsTagIds(limit);
        //因为id in（1,2,3） 里面不能为空所以我们需要进行判断
        //  CollectionUtils.isEmpty作用 https://blog.csdn.net/qq_42848910/article/details/105717235
        if(CollectionUtils.isEmpty(tagIds)){
            return Result.success(Collections.emptyList());
        }
        //需求的是tagId 和tagName Tag对象
        //我们的sql语句类似于select * from tag where id in (1,2,3)
        List<Tag> tagList = tagMapper.findTagsByTagIds(tagIds);
        return Result.success(tagList);
    }



    /**
     *查找写文章所有的标签
     */
    @Override
    public Result findAll() {
        List<Tag> tags = this.tagMapper.selectList(new LambdaQueryWrapper<>());
        return Result.success(copyList(tags));
    }

    @Override
    public Result findAllDetail() {
        LambdaQueryWrapper<Tag> queryWrapper = new LambdaQueryWrapper<>();
        List<Tag> tags = this.tagMapper.selectList(queryWrapper);
        return Result.success(copyList(tags));
    }



    /**
     *查显示文章的标签
     */
    @Override
    public Result findDetailById(Long id) {
        Tag tag = tagMapper.selectById(id);
        TagVo copy = copy(tag);
        return Result.success(copy);
    }



}

package com.demo.blogapi.service;

import com.demo.blogapi.vo.Result;
import com.demo.blogapi.vo.params.CommentParam;

/**
 * @author Cbo
 * @date 2022/11/22 0022 10:35
 */
public interface CommentsService {
    /**
     * 根据文章id查询所有的评论列表
     */
    Result commentsByArticleId(Long id);

    Result comment(CommentParam commentParam);
}

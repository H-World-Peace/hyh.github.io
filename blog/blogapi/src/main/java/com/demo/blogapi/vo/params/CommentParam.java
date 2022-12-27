package com.demo.blogapi.vo.params;

/**
 * @author Cbo
 * @date 2022/11/22 0022 14:43
 */
import lombok.Data;

@Data
public class CommentParam {

    private Long articleId;

    private String content;

    private Long parent;

    private Long toUserId;
}
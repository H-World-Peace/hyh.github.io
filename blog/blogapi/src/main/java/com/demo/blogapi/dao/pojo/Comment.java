package com.demo.blogapi.dao.pojo;

/**
 * @author Cbo
 * @date 2022/11/22 0022 10:33
 */
import lombok.Data;

@Data
public class Comment {

    private Long id;

    private String content;

    private Long createDate;

    private Long articleId;

    private Long authorId;

    private Long parentId;

    private Long toUid;

    private Integer level;
}
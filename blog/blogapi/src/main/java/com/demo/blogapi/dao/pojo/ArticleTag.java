package com.demo.blogapi.dao.pojo;

/**
 * @author Cbo
 * @date 2022/11/22 0022 21:01
 */
import lombok.Data;

@Data
public class ArticleTag {

    private Long id;

    private Long articleId;

    private Long tagId;
}
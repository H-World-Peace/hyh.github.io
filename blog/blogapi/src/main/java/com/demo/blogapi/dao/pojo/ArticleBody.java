package com.demo.blogapi.dao.pojo;

/**
 * @author Cbo
 * @date 2022/11/19 0019 13:50
 */
import lombok.Data;
//内容表
@Data
public class ArticleBody {

    private Long id;
    private String content;
    private String contentHtml;
    private Long articleId;
}

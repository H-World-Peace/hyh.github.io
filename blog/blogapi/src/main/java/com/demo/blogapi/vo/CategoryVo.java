package com.demo.blogapi.vo;

import lombok.Data;

/**
 * @author Cbo
 * @date 2022/11/19 0019 13:55
 */
@Data
public class CategoryVo {
    //id，图标路径，图标名称
    private Long id;

    private String avatar;

    private String categoryName;

    private  String description;
}

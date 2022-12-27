package com.demo.blogapi.dao.pojo;
import lombok.Data;


/**
 * @author Cbo
 * @date 2022/11/19 0019 13:51
 */

//类别表
@Data
public class Category {

    private Long id;

    private String avatar;

    private String categoryName;

    private String description;
}
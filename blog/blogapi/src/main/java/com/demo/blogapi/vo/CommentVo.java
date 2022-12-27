package com.demo.blogapi.vo;

/**
 * @author Cbo
 * @date 2022/11/22 0022 10:39
 */
import lombok.Data;

import java.util.List;

@Data
public class CommentVo  {

    private String id;

    private UserVo author;

    private String content;

    private List<CommentVo> childrens;

    private String createDate;

    private Integer level;

    private UserVo toUser;
}
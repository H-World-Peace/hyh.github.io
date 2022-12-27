package com.demo.blogapi.vo;

/**
 * @author Cbo
 * @date 2022/11/18 0018 18:49
 */


import lombok.Data;

@Data
public class LoginUserVo {
    //与页面交互

    private Long id;

    private String account;

    private String nickname;

    private String avatar;
}


package com.demo.blogapi.vo.params;

import lombok.Data;

/**
 * @author Cbo
 * @date 2022/11/16 0016 22:27
 */
@Data
public class LoginParam {
    private String account;
    private String password;
    private String nickname;
}

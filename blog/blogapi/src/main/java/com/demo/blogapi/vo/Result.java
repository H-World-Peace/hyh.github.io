package com.demo.blogapi.vo;

/**
 * @author Cbo
 * @date 2022/11/15 0015 19:04
 */


import com.demo.blogapi.dao.pojo.Article;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
//vo的含义 view objects：显示层对象，web向模板引擎传输的对象
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Result {

    private boolean success;

    private Integer code;

    private String msg;

    private Object data;


    public static Result success(Object data) {
        return new Result(true,200,"success",data);
    }
    public static Result fail(Integer code, String msg) {
        return new Result(false,code,msg,null);
    }
}


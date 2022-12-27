package com.demo.blogapi.controller;

import com.demo.blogapi.vo.Result;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Cbo
 * @date 2022/11/19 0019 9:41
 */
@RestController
@RequestMapping("test")
public class TestController {
    @RequestMapping
    public Result test(){
        return Result.success(null);
    }
}

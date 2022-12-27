package com.demo.blogapi.controller;

import com.demo.blogapi.service.LoginService;
import com.demo.blogapi.vo.Result;
import com.demo.blogapi.vo.params.LoginParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author Cbo
 * @date 2022/11/16 0016 22:25
 */
@RestController
//@RequestMapping("login")
public class LoginController {

    @Autowired
    private LoginService loginService;




    @PostMapping("login")
    public Result login(@RequestBody LoginParam loginParam){
        //登陆 验证用户 访问用户表
        return loginService.login(loginParam);

    }


    //获取头部信息这样一个参数
    @GetMapping("logout")
    public Result logout(@RequestHeader("Authorization") String token){
        return loginService.logout(token);
    }

    //后端传递多个参数，前端只选用其需要的参数就可以了
    @PostMapping("register")
    public Result register(@RequestBody LoginParam loginParam){
        //sso 单点登录，后期如果把登录注册功能 提出去（单独的服务，可以独立提供接口服务）
        return loginService.register(loginParam);
    }
}
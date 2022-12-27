package com.demo.blogapi.service;

import com.demo.blogapi.dao.pojo.SysUser;
import com.demo.blogapi.vo.Result;
import com.demo.blogapi.vo.params.LoginParam;

/**
 * @author Cbo
 * @date 2022/11/17 0017 21:26
 */
public interface LoginService {
    /**
     * 登录
     */
    Result login(LoginParam loginParam);

    SysUser checkToken(String token);


  /**
   *退出登录
   */
    Result logout(String token);

    Result register(LoginParam loginParam);
}

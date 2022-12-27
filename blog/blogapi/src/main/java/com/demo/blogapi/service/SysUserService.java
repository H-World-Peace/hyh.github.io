package com.demo.blogapi.service;

import com.demo.blogapi.dao.pojo.SysUser;
import com.demo.blogapi.vo.Result;
import com.demo.blogapi.vo.UserVo;

/**
 * @author Cbo
 * @date 2022/11/15 0015 22:55
 */
public interface SysUserService {
    SysUser findUserById(Long userId);

    SysUser findUser(String account, String password);


    /**
     *根据token查询用户信息
     */
    Result findUserByToken(String token);

    SysUser findUserByAccount(String account);

    void save(SysUser sysUser);
    UserVo findUserVoById(Long id);

}

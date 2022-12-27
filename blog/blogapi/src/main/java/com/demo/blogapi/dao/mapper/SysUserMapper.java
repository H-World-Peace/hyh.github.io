package com.demo.blogapi.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.demo.blogapi.dao.pojo.SysUser;

/**
 * @author Cbo
 * @date 2022/11/15 0015 18:48
 */
//因为前面添加了mapperscan注解，所以此处不需要再添加mapper注解了
public interface SysUserMapper extends BaseMapper<SysUser> {
}

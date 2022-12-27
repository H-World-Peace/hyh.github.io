package com.demo.blogapi.dao.pojo;

/**
 * @author Cbo
 * @date 2022/11/15 0015 18:42
 */


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class SysUser {
    //@TableId(type = IdType.AUTO)
    private Long id;

    private String account;

 //   private Integer admin;

    private String avatar;

    private Long createDate;

   // private Integer deleted;

  //  private String email;

    private Long lastLogin;

   // private String mobilePhoneNumber;

    private String nickname;

    private String password;

 //   private String salt;

   // private String status;
}


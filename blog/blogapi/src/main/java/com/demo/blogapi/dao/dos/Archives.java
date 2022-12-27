package com.demo.blogapi.dao.dos;
import lombok.Data;


/**
 * @author Cbo
 * @date 2022/11/16 0016 20:01
 *  do 对象 数据库 查询出来的对象但是不需要持久化，由于do是关键字所以加了个s成为dos
 */
@Data
public class Archives {

    private Integer year;

    private Integer month;

    private Long count;
}
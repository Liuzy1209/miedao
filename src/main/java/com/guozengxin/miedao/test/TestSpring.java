package com.guozengxin.miedao.test;

import com.guozengxin.miedao.service.AdminService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


/**
 * Author: 郭增鑫
 * Date:2020-05-01 17:00
 * Description:(描述)
 */
public class TestSpring {
    /*
    *测试spring框架环境
    */
    @Test
    public void run1(){
        //创建工厂，加载配置文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取service，调用方法
        AdminService service = ac.getBean(AdminService.class);
        service.findAll();
    }
}

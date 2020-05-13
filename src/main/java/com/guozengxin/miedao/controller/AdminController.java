package com.guozengxin.miedao.controller;

import com.guozengxin.miedao.model.Admin;
import com.guozengxin.miedao.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Author: 郭增鑫
 * Date:2020-05-01 17:50
 * Description:(描述)
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    /*
    * 注入
    * */
    @Autowired
    private AdminService adminService;

    /*
    * 查询所有
    * */
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(){
        System.out.println("hello");

        //调用service对象方法
        List<Admin> list = adminService.findAll();
        for (Admin admin:list){
            System.out.println(admin);
        }

        ModelAndView mv = new ModelAndView();
        mv.setViewName("suc");
        return mv;
    }

    /*
    * 保存数据*/
    @RequestMapping("/save.do")
    public String save(Admin admin){
        //调用service，保存数据
        adminService.save(admin);
        return "suc";
    }

}

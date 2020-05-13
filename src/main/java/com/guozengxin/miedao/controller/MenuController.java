package com.guozengxin.miedao.controller;

import com.guozengxin.miedao.model.Menu;
import com.guozengxin.miedao.service.MenuService;
import com.guozengxin.miedao.util.ResultHelper.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Author: 郭增鑫
 * Date:2020-05-08 20:10
 * Description:(描述)
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

    /*
     * 注入
     * */
    @Autowired
    private MenuService menuService;

    @Autowired
    private HttpServletRequest request;



    /*
    * 上传菜谱*/
    @RequestMapping("/save.do")
    @ResponseBody
    public ResponseResult uploadImage(Menu menu){
        System.out.println(menu);
        menuService.save(menu);
        return ResponseResult.success(1);
    }
}

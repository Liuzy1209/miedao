package com.guozengxin.miedao.controller;

import com.guozengxin.miedao.model.Menu;
import com.guozengxin.miedao.service.MenuService;
import com.guozengxin.miedao.util.ResultHelper.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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


    @RequestMapping("/save.do")
    @ResponseBody
    public ResponseResult uploadImage(Menu menu) {
        menuService.save(menu);
        //System.out.println();
        return ResponseResult.success(1);
    }


    /*
    * 查询所有菜谱展示*/
    @RequestMapping("/find_all.do")
    @ResponseBody
    public ResponseResult findAll(){
        System.out.println("succcccc");
        List<Menu> menus = menuService.findAll();
        return ResponseResult.success(menus);
    }

}

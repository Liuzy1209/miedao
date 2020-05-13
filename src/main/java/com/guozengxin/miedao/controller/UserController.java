package com.guozengxin.miedao.controller;

import com.guozengxin.miedao.model.User;
import com.guozengxin.miedao.service.UserService;
import com.guozengxin.miedao.util.ResultHelper.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Author: 郭增鑫
 * Date:2020-05-02 13:51
 * Description:(描述)
 */
@Controller
@RequestMapping("/user")
public class UserController {

    /*
     * 注入
     * */
    @Autowired
    private UserService userService;

    @Autowired
    private HttpServletRequest request;

    /*
    * 注册*/
    @ResponseBody
    @RequestMapping("/register.do")
    public ResponseResult register(User user){
        ResponseResult responseResult = userService.register(user);
        return responseResult;
    }

    /*
    * 登录*/
    @RequestMapping("/login.do")
    @ResponseBody
    public ResponseResult login(User user){
        System.out.println("user = " + user);
        ResponseResult responseResult = userService.loginComparison(user);
        return responseResult;
    }

    /*
    * 前端获取session：user登录验证，展示不同内容*/
    @RequestMapping("/check_login.do")
    @ResponseBody
    public ResponseResult checkLogin(){
        User user = (User) request.getSession().getAttribute("user");
        if(user!=null){
            System.out.println("=====suc");
            return ResponseResult.success(user);
        }else {
            return ResponseResult.success();
        }
    }

}

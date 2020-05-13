package com.guozengxin.miedao.service.Impl;

import com.guozengxin.miedao.mapper.UserMapper;
import com.guozengxin.miedao.model.User;
import com.guozengxin.miedao.service.UserService;
import com.guozengxin.miedao.util.ResultHelper.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

/**
 * Author: 郭增鑫
 * Date:2020-05-04 10:30
 * Description:(描述)
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private HttpServletRequest request;


    @Override
    public int save(User user){
         return userMapper.insert(user);
    }

    @Override
    public User findByPhone(String u_phone){
        return userMapper.selectByPhone(u_phone);
    }

    @Override
    public ResponseResult loginComparison(User user){
        System.out.println("user02 = " + user.getU_phone());
        //获取数据库中user
        User user1 = phoneExist(user);
        System.out.println("user03 = " + user1.getU_phone());
        if (user1 == null){
            return ResponseResult.success();
        }else {
            //获取数据库password
            String pass1 = user1.getU_password();
            //获取前端password
            String pass = user.getU_password();
            //比对,正确返回user1，错误返回2
            if (pass.equals(pass1)){
                request.getSession().setAttribute("user",user1);
                return ResponseResult.success(1);
            }else {
                return ResponseResult.success(2);
            }
        }

    }

    //查询手机号是否存在,存在返回userByPhone。
    @Override
    public User phoneExist(User user){
        User userByPhone = findByPhone(user.getU_phone());
        if (userByPhone != null){
            return userByPhone;
        }else {
            return null;
        }
    }

    //注册，返回null为成功，1为手机号已存在
    @Override
    public ResponseResult register(User user){

        User result = phoneExist(user);
        if (result == null){
            //存入默认头像
            String u_pic = "static/image/personalCenter/xiaokeai.jpg";
            user.setU_pic(u_pic);
            save(user);
            return ResponseResult.success();
        }else {
            return ResponseResult.success(1);
        }
    }


}

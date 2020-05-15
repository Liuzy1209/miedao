package com.guozengxin.miedao.service;

import com.guozengxin.miedao.model.User;
import com.guozengxin.miedao.util.ResultHelper.ResponseResult;

/**
 * Author: 郭增鑫
 * Date:2020-05-04 10:24
 * Description:(描述)
 */
public interface UserService {

    //保存用户
    int save(User user);

    //通过手机号查询用户
    User findByPhone(String u_phone);

    //登录验证，比对密码
    ResponseResult loginComparison(User user);

    //检查手机号是否存在
    User phoneExist(User user);

    //注册
    ResponseResult register(User user);

    //通过id查询用户名
    User findById(Integer U_id);
}

package com.guozengxin.miedao.util.ResultHelper;

import com.guozengxin.miedao.util.constant.ResponseStatusConstant;

/**
 * Author: 郭增鑫
 * Date:2020-05-05 12:32
 * Description:这里是用来给前台ajax请求返回一些json数据以作出相应的相应的帮助类
 */
public class ResponseResult {

    //状态码
    private int status;

    //消息
    private String message;

    //返回数据
    private Object data;

    public ResponseResult(int status, String message, Object data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }

    //成功
    public static ResponseResult success(Object data) {
        return new ResponseResult(ResponseStatusConstant.RESPONSE_STATUS_SUCCESS, "success", data);
    }

    public static ResponseResult success(String message) {
        return new ResponseResult(ResponseStatusConstant.RESPONSE_STATUS_SUCCESS, message, null);
    }

    public static ResponseResult success() {
        return new ResponseResult(ResponseStatusConstant.RESPONSE_STATUS_SUCCESS, "success", null);
    }

    //失败
    public static ResponseResult fail() {
        return new ResponseResult(ResponseStatusConstant.RESPONSE_STATUS_FAIL, "fail", null);
    }

    public static ResponseResult fail(Object data) {
        return new ResponseResult(ResponseStatusConstant.RESPONSE_STATUS_FAIL, "fail", data);
    }

    public static ResponseResult fail(String message) {
        return new ResponseResult(ResponseStatusConstant.RESPONSE_STATUS_FAIL, message, null);
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

}

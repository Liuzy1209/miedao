package com.guozengxin.miedao.service;

import com.guozengxin.miedao.model.Admin;

import java.util.List;

/**
 * Author: 郭增鑫
 * Date:2020-05-01 16:18
 * Description:(描述)
 */
public interface AdminService {
    //查询所有
    public List<Admin> findAll();

    void save(Admin admin);
}

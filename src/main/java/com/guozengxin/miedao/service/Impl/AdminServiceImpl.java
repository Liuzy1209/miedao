package com.guozengxin.miedao.service.Impl;

import com.guozengxin.miedao.mapper.AdminMapper;
import com.guozengxin.miedao.model.Admin;
import com.guozengxin.miedao.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: 郭增鑫
 * Date:2020-05-01 16:26
 * Description:(描述)
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public List<Admin> findAll() {
        System.out.println("nihao");
        return adminMapper.selectAll();
    }

    @Override
    public void save(Admin admin){
        adminMapper.insert(admin);
    }
}

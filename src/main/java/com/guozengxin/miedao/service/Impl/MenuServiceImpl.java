package com.guozengxin.miedao.service.Impl;

import com.guozengxin.miedao.mapper.MenuMapper;
import com.guozengxin.miedao.model.Menu;
import com.guozengxin.miedao.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author: 郭增鑫
 * Date:2020-05-08 20:11
 * Description:(描述)
 */
@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuMapper menuMapper;


    @Override
    public int save(Menu menu){
        return menuMapper.insert(menu);
    }
}

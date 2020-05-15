package com.guozengxin.miedao.service.Impl;

import com.guozengxin.miedao.mapper.MenuMapper;
import com.guozengxin.miedao.model.Menu;
import com.guozengxin.miedao.model.User;
import com.guozengxin.miedao.service.MenuService;
import com.guozengxin.miedao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: 郭增鑫
 * Date:2020-05-08 20:11
 * Description:(描述)
 */
@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuMapper menuMapper;

    @Autowired
    private UserService userService;


    @Override
    public int save(Menu menu){
        return menuMapper.insert(menu);
    }

    @Override
    public List<Menu> findAll(){
        List<Menu> menus = menuMapper.selectAll();
        for (Menu m:menus){
            User user = userService.findById(m.getU_id());
            m.setM_remark(user.getU_name());
        }
        return menus;
    }

}

package com.guozengxin.miedao.service;

import com.guozengxin.miedao.model.Menu;

import java.util.List;

/**
 * Author: 郭增鑫
 * Date:2020-05-04 10:26
 * Description:(描述)
 */
public interface MenuService {

    int save(Menu menu);

    List<Menu> findAll();

}

package com.guozengxin.miedao.mapper;

import com.guozengxin.miedao.model.MenuView;
import java.util.List;

public interface MenuViewMapper {
    int deleteByPrimaryKey(Integer m_v_id);

    int insert(MenuView record);

    MenuView selectByPrimaryKey(Integer m_v_id);

    List<MenuView> selectAll();

    int updateByPrimaryKey(MenuView record);
}
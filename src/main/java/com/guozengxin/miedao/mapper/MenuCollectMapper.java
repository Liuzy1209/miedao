package com.guozengxin.miedao.mapper;

import com.guozengxin.miedao.model.MenuCollect;
import java.util.List;

public interface MenuCollectMapper {
    int deleteByPrimaryKey(Integer m_c_id);

    int insert(MenuCollect record);

    MenuCollect selectByPrimaryKey(Integer m_c_id);

    List<MenuCollect> selectAll();

    int updateByPrimaryKey(MenuCollect record);
}
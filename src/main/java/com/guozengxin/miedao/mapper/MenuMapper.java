package com.guozengxin.miedao.mapper;

import com.guozengxin.miedao.model.Menu;
import java.util.List;

public interface MenuMapper {
    int deleteByPrimaryKey(Integer m_id);

    int insert(Menu record);

    Menu selectByPrimaryKey(Integer m_id);

    List<Menu> selectAll();

    int updateByPrimaryKey(Menu record);
}
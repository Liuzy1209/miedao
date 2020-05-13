package com.guozengxin.miedao.mapper;

import com.guozengxin.miedao.model.Admin;
import java.util.List;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer a_id);

    int insert(Admin record);

    Admin selectByPrimaryKey(Integer a_id);

    List<Admin> selectAll();

    int updateByPrimaryKey(Admin record);

}
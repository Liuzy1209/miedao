package com.guozengxin.miedao.mapper;

import com.guozengxin.miedao.model.User;
import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer u_id);

    int insert(User record);

    User selectByPrimaryKey(Integer u_id);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    User selectByPhone(String phone);
}
package com.guozengxin.miedao.mapper;

import com.guozengxin.miedao.model.Concern;
import java.util.List;

public interface ConcernMapper {
    int deleteByPrimaryKey(Integer c_id);

    int insert(Concern record);

    Concern selectByPrimaryKey(Integer c_id);

    List<Concern> selectAll();

    int updateByPrimaryKey(Concern record);
}
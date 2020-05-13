package com.guozengxin.miedao.mapper;

import com.guozengxin.miedao.model.NoteCollect;
import java.util.List;

public interface NoteCollectMapper {
    int deleteByPrimaryKey(Integer n_c_id);

    int insert(NoteCollect record);

    NoteCollect selectByPrimaryKey(Integer n_c_id);

    List<NoteCollect> selectAll();

    int updateByPrimaryKey(NoteCollect record);
}
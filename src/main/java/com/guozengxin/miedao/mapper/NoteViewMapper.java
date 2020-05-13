package com.guozengxin.miedao.mapper;

import com.guozengxin.miedao.model.NoteView;
import java.util.List;

public interface NoteViewMapper {
    int deleteByPrimaryKey(Integer n_v_id);

    int insert(NoteView record);

    NoteView selectByPrimaryKey(Integer n_v_id);

    List<NoteView> selectAll();

    int updateByPrimaryKey(NoteView record);
}
package com.guozengxin.miedao.mapper;

import com.guozengxin.miedao.model.Note;
import java.util.List;

public interface NoteMapper {
    int deleteByPrimaryKey(Integer n_id);

    int insert(Note record);

    Note selectByPrimaryKey(Integer n_id);

    List<Note> selectAll();

    int updateByPrimaryKey(Note record);
}
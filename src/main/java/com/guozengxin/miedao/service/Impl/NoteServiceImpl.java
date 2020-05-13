package com.guozengxin.miedao.service.Impl;

import com.guozengxin.miedao.mapper.NoteMapper;
import com.guozengxin.miedao.model.Note;
import com.guozengxin.miedao.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Author: 郭增鑫
 * Date:2020-05-11 20:10
 * Description:(描述)
 */
@Service
public class NoteServiceImpl implements NoteService {

    @Autowired
    private NoteMapper noteMapper;


    @Override
    public int save(Note note){
        return noteMapper.insert(note);
    }
}

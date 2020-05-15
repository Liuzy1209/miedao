package com.guozengxin.miedao.service.Impl;

import com.guozengxin.miedao.mapper.NoteMapper;
import com.guozengxin.miedao.model.Note;
import com.guozengxin.miedao.model.User;
import com.guozengxin.miedao.service.NoteService;
import com.guozengxin.miedao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: 郭增鑫
 * Date:2020-05-11 20:10
 * Description:(描述)
 */
@Service
public class NoteServiceImpl implements NoteService {

    @Autowired
    private NoteMapper noteMapper;

    @Autowired
    private UserService userService;


    @Override
    public int save(Note note){
        return noteMapper.insert(note);
    }

    @Override
    public List<Note> findAll(){
        List<Note> notes = noteMapper.selectAll();
        for (Note n:notes){
            User user = userService.findById(n.getU_id());
            n.setN_remark(user.getU_name());
        }
        return notes;
    }

}

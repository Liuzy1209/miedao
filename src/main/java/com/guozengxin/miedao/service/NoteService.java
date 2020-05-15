package com.guozengxin.miedao.service;

import com.guozengxin.miedao.model.Note;

import java.util.List;

/**
 * Author: 郭增鑫
 * Date:2020-05-04 10:29
 * Description:(描述)
 */
public interface NoteService {

    int save(Note note);

    List<Note> findAll();
}

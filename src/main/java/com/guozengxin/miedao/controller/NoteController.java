package com.guozengxin.miedao.controller;

import com.guozengxin.miedao.model.Note;
import com.guozengxin.miedao.service.NoteService;
import com.guozengxin.miedao.util.ResultHelper.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Author: 郭增鑫
 * Date:2020-05-11 20:08
 * Description:(描述)
 */
@Controller
@RequestMapping("/note")
public class NoteController {

    /*
     * 注入
     * */
    @Autowired
    private NoteService noteService;

    /*
     * 上传笔记*/
    @RequestMapping("/save.do")
    @ResponseBody
    public ResponseResult uploadImage(Note note){
        System.out.println(note);
        noteService.save(note);
        return ResponseResult.success(1);
    }

    /*
     * 查询所有笔记展示*/
    @RequestMapping("/find_note_all.do")
    @ResponseBody
    public ResponseResult findAll(){
        List<Note> notes = noteService.findAll();
        return ResponseResult.success(notes);
    }

}

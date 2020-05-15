package com.guozengxin.miedao.model;

import java.util.Date;

public class Note {
    private Integer n_id;

    private String n_pic;

    private String n_content;

    private Integer u_id;

    private String u_pic;

    private Integer n_likes;

    private Date n_time;

    private String n_remark;

    public Integer getN_id() {
        return n_id;
    }

    public void setN_id(Integer n_id) {
        this.n_id = n_id;
    }

    public String getN_pic() {
        return n_pic;
    }

    public void setN_pic(String n_pic) {
        this.n_pic = n_pic == null ? null : n_pic.trim();
    }

    public String getN_content() {
        return n_content;
    }

    public void setN_content(String n_content) {
        this.n_content = n_content == null ? null : n_content.trim();
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public String getU_pic() {
        return u_pic;
    }

    public void setU_pic(String u_pic) {
        this.u_pic = u_pic == null ? null : u_pic.trim();
    }

    public Integer getN_likes() {
        return n_likes;
    }

    public void setN_likes(Integer n_likes) {
        this.n_likes = n_likes;
    }

    public Date getN_time() {
        return n_time;
    }

    public void setN_time(Date n_time) {
        this.n_time = n_time;
    }

    public String getN_remark() {
        return n_remark;
    }

    public void setN_remark(String n_remark) {
        this.n_remark = n_remark == null ? null : n_remark.trim();
    }
}
package com.guozengxin.miedao.model;

public class NoteView {
    private Integer n_v_id;

    private Integer u_id;

    private Integer n_id;

    private String n_v_comment;

    private String n_v_remark;

    public Integer getN_v_id() {
        return n_v_id;
    }

    public void setN_v_id(Integer n_v_id) {
        this.n_v_id = n_v_id;
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public Integer getN_id() {
        return n_id;
    }

    public void setN_id(Integer n_id) {
        this.n_id = n_id;
    }

    public String getN_v_comment() {
        return n_v_comment;
    }

    public void setN_v_comment(String n_v_comment) {
        this.n_v_comment = n_v_comment == null ? null : n_v_comment.trim();
    }

    public String getN_v_remark() {
        return n_v_remark;
    }

    public void setN_v_remark(String n_v_remark) {
        this.n_v_remark = n_v_remark == null ? null : n_v_remark.trim();
    }
}
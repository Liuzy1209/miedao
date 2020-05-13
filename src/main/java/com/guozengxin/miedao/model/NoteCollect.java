package com.guozengxin.miedao.model;

public class NoteCollect {
    private Integer n_c_id;

    private Integer u_id;

    private Integer n_id;

    private String n_c_remark;

    public Integer getN_c_id() {
        return n_c_id;
    }

    public void setN_c_id(Integer n_c_id) {
        this.n_c_id = n_c_id;
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

    public String getN_c_remark() {
        return n_c_remark;
    }

    public void setN_c_remark(String n_c_remark) {
        this.n_c_remark = n_c_remark == null ? null : n_c_remark.trim();
    }
}
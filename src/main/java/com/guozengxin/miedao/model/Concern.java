package com.guozengxin.miedao.model;

public class Concern {
    private Integer c_id;

    private Integer u_id;

    private Integer c_u_id;

    private String c_remark;

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public Integer getC_u_id() {
        return c_u_id;
    }

    public void setC_u_id(Integer c_u_id) {
        this.c_u_id = c_u_id;
    }

    public String getC_remark() {
        return c_remark;
    }

    public void setC_remark(String c_remark) {
        this.c_remark = c_remark == null ? null : c_remark.trim();
    }
}
package com.guozengxin.miedao.model;

public class Bill {
    private Integer b_id;

    private String b_pic;

    private String b_remark;

    public Integer getB_id() {
        return b_id;
    }

    public void setB_id(Integer b_id) {
        this.b_id = b_id;
    }

    public String getB_pic() {
        return b_pic;
    }

    public void setB_pic(String b_pic) {
        this.b_pic = b_pic == null ? null : b_pic.trim();
    }

    public String getB_remark() {
        return b_remark;
    }

    public void setB_remark(String b_remark) {
        this.b_remark = b_remark == null ? null : b_remark.trim();
    }
}
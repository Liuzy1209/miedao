package com.guozengxin.miedao.model;

public class User {
    private Integer u_id;

    private String u_name;

    private String u_password;

    private String u_phone;

    private String u_pic;

    private String u_remark;

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name == null ? null : u_name.trim();
    }

    public String getU_password() {
        return u_password;
    }

    public void setU_password(String u_password) {
        this.u_password = u_password == null ? null : u_password.trim();
    }

    public String getU_phone() {
        return u_phone;
    }

    public void setU_phone(String u_phone) {
        this.u_phone = u_phone == null ? null : u_phone.trim();
    }

    public String getU_pic() {
        return u_pic;
    }

    public void setU_pic(String u_pic) {
        this.u_pic = u_pic == null ? null : u_pic.trim();
    }

    public String getU_remark() {
        return u_remark;
    }

    public void setU_remark(String u_remark) {
        this.u_remark = u_remark == null ? null : u_remark.trim();
    }
}
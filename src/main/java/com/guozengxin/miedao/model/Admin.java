package com.guozengxin.miedao.model;

public class Admin {
    private Integer a_id;

    private String a_name;

    private String a_password;

    private String a_remark;

    public Integer getA_id() {
        return a_id;
    }

    public void setA_id(Integer a_id) {
        this.a_id = a_id;
    }

    public String getA_name() {
        return a_name;
    }

    public void setA_name(String a_name) {
        this.a_name = a_name == null ? null : a_name.trim();
    }

    public String getA_password() {
        return a_password;
    }

    public void setA_password(String a_password) {
        this.a_password = a_password == null ? null : a_password.trim();
    }

    public String getA_remark() {
        return a_remark;
    }

    public void setA_remark(String a_remark) {
        this.a_remark = a_remark == null ? null : a_remark.trim();
    }
}
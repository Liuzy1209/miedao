package com.guozengxin.miedao.model;

import java.util.Date;

public class Menu {
    private Integer m_id;

    private String m_name;

    private String m_title;

    private String m_pic;

    private String m_material;

    private String m_step;

    private String m_summary;

    private Date m_time;

    private Integer m_likes;

    private Integer u_id;

    private String u_pic;

    private String m_remark;

    public Integer getM_id() {
        return m_id;
    }

    public void setM_id(Integer m_id) {
        this.m_id = m_id;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name == null ? null : m_name.trim();
    }

    public String getM_title() {
        return m_title;
    }

    public void setM_title(String m_title) {
        this.m_title = m_title == null ? null : m_title.trim();
    }

    public String getM_pic() {
        return m_pic;
    }

    public void setM_pic(String m_pic) {
        this.m_pic = m_pic == null ? null : m_pic.trim();
    }

    public String getM_material() {
        return m_material;
    }

    public void setM_material(String m_material) {
        this.m_material = m_material == null ? null : m_material.trim();
    }

    public String getM_step() {
        return m_step;
    }

    public void setM_step(String m_step) {
        this.m_step = m_step == null ? null : m_step.trim();
    }

    public String getM_summary() {
        return m_summary;
    }

    public void setM_summary(String m_summary) {
        this.m_summary = m_summary == null ? null : m_summary.trim();
    }

    public Date getM_time() {
        return m_time;
    }

    public void setM_time(Date m_time) {
        this.m_time = m_time;
    }

    public Integer getM_likes() {
        return m_likes;
    }

    public void setM_likes(Integer m_likes) {
        this.m_likes = m_likes;
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

    public String getM_remark() {
        return m_remark;
    }

    public void setM_remark(String m_remark) {
        this.m_remark = m_remark == null ? null : m_remark.trim();
    }

    @Override
    public String
    toString() {
        return "Menu{" +
                "m_id=" + m_id +
                ", m_name='" + m_name + '\'' +
                ", m_title='" + m_title + '\'' +
                ", m_pic='" + m_pic + '\'' +
                ", m_material='" + m_material + '\'' +
                ", m_step='" + m_step + '\'' +
                ", m_summary='" + m_summary + '\'' +
                ", m_time=" + m_time +
                ", m_likes=" + m_likes +
                ", u_id=" + u_id +
                ", u_pic='" + u_pic + '\'' +
                ", m_remark='" + m_remark + '\'' +
                '}';
    }
}
package com.guozengxin.miedao.model;

public class MenuView {
    private Integer m_v_id;

    private Integer u_id;

    private Integer m_id;

    private String m_v_comment;

    private String m_v_remark;

    public Integer getM_v_id() {
        return m_v_id;
    }

    public void setM_v_id(Integer m_v_id) {
        this.m_v_id = m_v_id;
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public Integer getM_id() {
        return m_id;
    }

    public void setM_id(Integer m_id) {
        this.m_id = m_id;
    }

    public String getM_v_comment() {
        return m_v_comment;
    }

    public void setM_v_comment(String m_v_comment) {
        this.m_v_comment = m_v_comment == null ? null : m_v_comment.trim();
    }

    public String getM_v_remark() {
        return m_v_remark;
    }

    public void setM_v_remark(String m_v_remark) {
        this.m_v_remark = m_v_remark == null ? null : m_v_remark.trim();
    }
}
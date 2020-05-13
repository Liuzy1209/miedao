package com.guozengxin.miedao.model;

public class MenuCollect {
    private Integer m_c_id;

    private Integer u_id;

    private Integer m_id;

    private String m_c_remark;

    public Integer getM_c_id() {
        return m_c_id;
    }

    public void setM_c_id(Integer m_c_id) {
        this.m_c_id = m_c_id;
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

    public String getM_c_remark() {
        return m_c_remark;
    }

    public void setM_c_remark(String m_c_remark) {
        this.m_c_remark = m_c_remark == null ? null : m_c_remark.trim();
    }
}
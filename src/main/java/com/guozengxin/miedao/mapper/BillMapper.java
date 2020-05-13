package com.guozengxin.miedao.mapper;

import com.guozengxin.miedao.model.Bill;
import java.util.List;

public interface BillMapper {
    int deleteByPrimaryKey(Integer b_id);

    int insert(Bill record);

    Bill selectByPrimaryKey(Integer b_id);

    List<Bill> selectAll();

    int updateByPrimaryKey(Bill record);
}
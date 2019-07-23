package com.demo.mms.dao;

import com.demo.mms.common.domain.Orders;

import java.util.List;

public interface OrdersMapper {
    int deleteByPrimaryKey(String id);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);

    List<Orders> selectByCustomerId(String customer_id);

    List<Orders> selectAllOrders();

    List<Orders> selectByGoodsId(String goods_id);
}
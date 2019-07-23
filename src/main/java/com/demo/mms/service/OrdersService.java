package com.demo.mms.service;

import com.demo.mms.common.domain.Orders;

import java.util.List;

public interface OrdersService {
    List<Orders> findOrdersIdByCustomerId(String customer_id);

    Orders findOrdersById(String id);

    void updateOrders(Orders orders);

    List<Orders> findAllOrders();

    List<Orders> findOrdersByGoodsId(String goods_id);

    void insertOrder(Orders orders);
}

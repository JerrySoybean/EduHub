package com.demo.mms.service;

import com.demo.mms.common.domain.Orders;
import com.demo.mms.dao.OrdersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    OrdersMapper ordersMapper;
    @Override
    public List<Orders> findOrdersIdByCustomerId(String customer_id) {
        return ordersMapper.selectByCustomerId(customer_id);
    }

    @Override
    public Orders findOrdersById(String id) {
        return ordersMapper.selectByPrimaryKey(id);
    }

    @Override
    @Transactional
    public void updateOrders(Orders orders) {
        ordersMapper.updateByPrimaryKey(orders);
    }

    @Override
    public List<Orders> findAllOrders() {
        return ordersMapper.selectAllOrders();
    }

    @Override
    public List<Orders> findOrdersByGoodsId(String goods_id) {
        return ordersMapper.selectByGoodsId(goods_id);
    }

    @Override
    @Transactional
    public void insertOrder(Orders orders) {
        ordersMapper.insert(orders);
    }
}

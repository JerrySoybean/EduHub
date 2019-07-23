package com.demo.mms.service;

import com.demo.mms.common.domain.Cart;

import java.util.List;

public interface CartService {
    List<Cart> findGoodsIdByCustomerId(String customer_id);

    int addItem(Cart item);

    int deleteItemById(String id);

    Cart findItemById(String id);
}

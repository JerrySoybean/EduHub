package com.demo.mms.controller;

import com.demo.mms.common.domain.Cart;
import com.demo.mms.common.domain.Customer;
import com.demo.mms.common.domain.Goods;
import com.demo.mms.common.utils.IDGenerator;
import com.demo.mms.service.CartService;
import com.demo.mms.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartService cartService;
    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/cart")
    public String toCart(ModelMap modelMap, HttpSession session) {
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        Customer curr_customer = (Customer) session.getAttribute("curr_customer");
        String curr_customer_id = curr_customer.getId();
        List<Cart> cart_list = cartService.findGoodsIdByCustomerId(curr_customer_id);
        int size = cart_list.size();
        List<Goods> all_goods_in_cart = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            String good_id = cart_list.get(i).getGoodsId();
            all_goods_in_cart.add(goodsService.findGoodsById(good_id));
        }
        modelMap.put("cart_list", cart_list);
        modelMap.put("goods_in_cart", all_goods_in_cart);
        return "customerCart";
    }

    @RequestMapping("/addcart")
    @ResponseBody
    public Object addCart(String goods_id, HttpSession session){
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        String curr_customer_id = ((Customer) session.getAttribute("curr_customer")).getId();
        Cart item = new Cart();
        item.setId(IDGenerator.getId());
        item.setCustomerId(curr_customer_id);
        item.setGoodsId(goods_id);
        cartService.addItem(item);
        Map<String, Object> map = new HashMap<>();
        map.put("ok", true);
        return map;
    }

    @RequestMapping("/del")
    @ResponseBody
    public Object delItem(String id) {
        cartService.deleteItemById(id);
        Map<String, Object> map = new HashMap<>();
        map.put("ok", true);
        return map;
    }
}

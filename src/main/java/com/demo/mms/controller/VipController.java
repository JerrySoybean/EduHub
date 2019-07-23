package com.demo.mms.controller;

import com.demo.mms.common.domain.Customer;
import com.demo.mms.common.domain.Goods;
import com.demo.mms.common.domain.Orders;
import com.demo.mms.service.CustomerService;
import com.demo.mms.service.GoodsService;
import com.demo.mms.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/vip")
public class VipController {
    @Autowired
    private CustomerService customerService;
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private OrdersService ordersService;
    @RequestMapping("/test")
    public String testVip(HttpSession session, ModelMap modelMap) {
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        String customer_id = ((Customer) session.getAttribute("curr_customer")).getId();
        Customer customer = customerService.findCustomerById(customer_id);
        if (customer.getPrivilege()) {
            return "customerHome";
        } else {
            Goods item = goodsService.findGoodsById("vip");
            List<Orders> orders = ordersService.findOrdersByGoodsId("vip");
            modelMap.put("item", item);
            modelMap.put("category", "Vip");
            modelMap.put("orders", orders);
            return "customerItem";
        }
    }
}

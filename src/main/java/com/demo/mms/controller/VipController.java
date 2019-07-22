package com.demo.mms.controller;

import com.demo.mms.common.domain.Customer;
import com.demo.mms.common.domain.Goods;
import com.demo.mms.service.CustomerService;
import com.demo.mms.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/vip")
public class VipController {
    @Autowired
    private CustomerService customerService;
    @Autowired
    private GoodsService goodsService;
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
            modelMap.put("item", item);
            return "customerItem";
        }
    }
}

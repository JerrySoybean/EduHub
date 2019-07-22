package com.demo.mms.controller;

import com.demo.mms.common.domain.Cart;
import com.demo.mms.common.domain.Goods;
import com.demo.mms.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/pay")
public class PayController {
    @Autowired
    private GoodsService goodsService;
    @RequestMapping("/topay")
    public String toPay(ModelMap modelMap, List<Goods> goods_list, List<String> item_list, HttpSession session) {
        System.out.println(1);
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        System.out.println(goods_list.get(0).getPrice());
        System.out.println(goods_list.size());
        return "Pay";
    }

}

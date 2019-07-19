package com.demo.mms.controller;

import com.demo.mms.common.domain.Goods;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PayController {
    @RequestMapping("/pay")
    public String toPay(ModelMap modelMap, List<Goods> goods, HttpSession session) {
        System.out.println('x');
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        return "Pay";
    }

}

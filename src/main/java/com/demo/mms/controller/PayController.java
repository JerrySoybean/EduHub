package com.demo.mms.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.demo.mms.common.domain.Cart;
import com.demo.mms.common.domain.Goods;
import com.demo.mms.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/pay")
public class PayController {
    @RequestMapping("/topay")
    @ResponseBody
    public String toPay(ModelMap modelMap, @RequestBody String[] itemId_list, HttpSession session) {
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        System.out.println(itemId_list[1]);
        modelMap.put("itemId_list", itemId_list);
        return "Pay";
    }

}

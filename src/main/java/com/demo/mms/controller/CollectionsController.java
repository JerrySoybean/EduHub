package com.demo.mms.controller;

import com.demo.mms.common.domain.Collections;
import com.demo.mms.common.domain.Customer;
import com.demo.mms.common.domain.Goods;
import com.demo.mms.common.utils.IDGenerator;
import com.demo.mms.service.CollectionsService;
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
@RequestMapping("/collections")
public class CollectionsController {
    @Autowired
    private CollectionsService collectionsService;
    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/wishlist")
    public String toWishlist(ModelMap modelMap, HttpSession session) {
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        String curr_customer_id = ((Customer) session.getAttribute("curr_customer")).getId();
        List<Collections> wishlist = collectionsService.findGoodsIdByCustomerId(curr_customer_id);
        int size = wishlist.size();
        List<Goods> all_goods_in_wishlist = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            String good_id = wishlist.get(i).getGoodsId();
            all_goods_in_wishlist.add(goodsService.findGoodsById(good_id));
        }
        modelMap.put("wish_list", wishlist);
        modelMap.put("goods_in_wishlist", all_goods_in_wishlist);
        return "customerWishlist";
    }

    @RequestMapping("/addwish")
    @ResponseBody
    public Object addWish(String goods_id, HttpSession session){
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        String curr_customer_id = ((Customer) session.getAttribute("curr_customer")).getId();
        Collections collection = new Collections();
        collection.setId(IDGenerator.getId());
        collection.setCustomerId(curr_customer_id);
        collection.setGoodsId(goods_id);
        collectionsService.addItem(collection);
        Map<String, Object> map = new HashMap<>();
        map.put("ok", true);
        return map;
    }

    @RequestMapping("/del")
    @ResponseBody
    public Object delCollection(String id) {
        collectionsService.deleteCollectionById(id);
        Map<String, Object> map = new HashMap<>();
        map.put("ok", true);
        return map;
    }
}

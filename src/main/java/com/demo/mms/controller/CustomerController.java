package com.demo.mms.controller;

import com.demo.mms.common.domain.Cart;
import com.demo.mms.common.domain.Collections;
import com.demo.mms.common.domain.Customer;
import com.demo.mms.common.utils.IDGenerator;
import com.demo.mms.common.domain.Goods;
import com.demo.mms.service.CartService;
import com.demo.mms.service.CollectionsService;
import com.demo.mms.service.CustomerService;
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
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private CartService cartService;
    @Autowired
    private CollectionsService collectionsService;

    @RequestMapping("/tologin")
    public String toLogin() {
        return "customerLogin";
    }

    @RequestMapping("/login")
    public String login(ModelMap modelMap, String name, String password, HttpSession session) {
        String msg = null;
        Customer customer = customerService.findCustomerByName(name);
        if (customer == null) {
            msg = "User name doesn't exist";
            modelMap.put("msg", msg);
            return "customerLogin";
        } else {
            String pwd = customer.getPassword();
            if (pwd != null && pwd.equals(password)) {
                msg = "Login success";
                modelMap.put("msg", msg);
                session.setAttribute("curr_customer", customer);
                return "customerHome";
            } else {
                msg = "Password error";
                modelMap.put("msg", msg);
                return "customerLogin";
            }
        }
    }

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
        modelMap.put("goods_in_cart", all_goods_in_cart);
        return "customerCart";
    }

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
        modelMap.put("goods_in_wishlist", all_goods_in_wishlist);
        return "customerWishlist";
    }

    @RequestMapping("/toregister")
    public String register(){
        return "customerRegister";
    }

    @RequestMapping("/register")
    public String register(ModelMap modelMap, Customer customer){
        String msg = null;
        //if the user haven't registered
        String name = customer.getName();
        String tel = customer.getTel();
        String email = customer.getEmail();
        Customer customer_db = customerService.findCustomerByName(name);
        if (customer_db != null){
            if (email.equals(customer_db.getEmail())){
                msg = "You have been registered, please do not register again.";
                modelMap.put("msg",msg);
                return "customerRegister";
            }
            msg = "This name has been used, please choose another.";
            modelMap.put("msg",msg);
            return "customerRegister";
        }
        //register
        customer.setId(IDGenerator.getId());
        customerService.insertCustomer(customer);
        msg = "Register successfully.";
        modelMap.put("msg",msg);
        return "customerLogin";
    }

    @RequestMapping("/info")
    public String info(ModelMap modelMap,String id){
        Customer customer = customerService.findCustomerById(id);
        System.out.println(customer.getId());
        modelMap.put("cus",customer);
        return "customerInfo";
    }

    @RequestMapping("/infoupdate")
    public String infoToupdate(ModelMap modelMap, Customer customer){
        customerService.updateCustomer(customer);

        modelMap.put("cus",customer);
        System.out.println("submit successfully");
        return "customerHome";
    }

    @RequestMapping("/home")
    public String home(){
        return "customerHome";
    }

    @RequestMapping("/addcart")
    @ResponseBody
    public Object addCart(String goods_id, HttpSession session){
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        String curr_customer_id = ((Customer) session.getAttribute("curr_customer")).getId();
        Cart cart = new Cart();
        cart.setId(IDGenerator.getId());
        cart.setCustomerId(curr_customer_id);
        cart.setGoodsId(goods_id);
        cartService.addItem(cart);
        Map<String, Object> map = new HashMap<>();
        map.put("ok", true);
        return map;
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
}

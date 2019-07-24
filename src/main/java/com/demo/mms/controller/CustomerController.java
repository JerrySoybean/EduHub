package com.demo.mms.controller;

import com.demo.mms.common.domain.Customer;
import com.demo.mms.common.domain.Goods;
import com.demo.mms.common.domain.Orders;
import com.demo.mms.common.utils.IDGenerator;
import com.demo.mms.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private GclassService gclassService;
    @Autowired
    private CartService cartService;

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

    @RequestMapping("/toregister")
    public String toRegister(){
        return "customerRegister";
    }

    @RequestMapping("/register")
    public String register(ModelMap modelMap, Customer customer, String password2){
        String msg = null;
        //if the user haven't registered
        String name = customer.getName();
        String tel = customer.getTel();
        String email = customer.getEmail();
        if (customer.getName() == "") {
            msg = "Name cannot be empty";
            modelMap.put("msg", msg);
            return "customerRegister";
        }
        if (customer.getPassword() == "") {
            msg = "Password cannot be empty";
            modelMap.put("msg", msg);
            return "customerRegister";
        }
        Customer customer_db = customerService.findCustomerByName(name);
        if (customer_db != null) {
            if (email.equals(customer_db.getEmail())) {
                msg = "You have been registered, please do not register again.";
                modelMap.put("msg", msg);
                return "customerRegister";
            }
            msg = "This name has been used, please choose another.";
            modelMap.put("msg", msg);
            return "customerRegister";
        }
        if (!customer.getPassword().equals(password2)) {
            msg = "Two passwords are different";
            modelMap.put("msg", msg);
            return "customerRegister";
        }
        customer.setId(IDGenerator.getId());
        customerService.insertCustomer(customer);
        msg = "Register successfully.";
        modelMap.put("msg",msg);
        return "customerLogin";
    }

    @RequestMapping("/info")
    public String info(HttpSession session){
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        return "customerInfo";
    }

    @RequestMapping("/infoupdate")
    public String infoUpdate(ModelMap modelMap, Customer customer, String password2, String password3, HttpSession session){
        String msg = null;
        Customer customer_db = (Customer) session.getAttribute("curr_customer");
        if (!customer.getPassword().equals(customer_db.getPassword())) {
            msg = "Wrong password";
            modelMap.put("msg", msg);
            return "customerInfo";
        }
        if (password2 != "") {
            if (password2.equals(password3)) {
                customer.setPassword(password2);
            } else {
                msg = "Two passwords are different";
                modelMap.put("msg", msg);
                return "customerInfo";
            }
        }
        customerService.updateCustomer(customer);
        session.setAttribute("curr_customer", customer);
        return "customerHome";
    }

    @RequestMapping("/home")
    public String home(){
        return "customerHome";
    }


    @RequestMapping("/learnvideo")
    public String toLearnvideo(ModelMap modelMap, HttpSession session){
        List<Goods> goods = goodsService.findGoodsByGclassId("video");
        int size = goods.size();
        Object temp = session.getAttribute("curr_customer");
        if (temp == null || ((Customer) temp).getPrivilege() == false) {
            for (int i = 0; i < size; i++) {
                if (goods.get(i).getRestriction() == true) {
                    goods.remove(i);
                    size--;
                    i--;
                }
            }
        }
        for (int i = 0; i < size; i++) {
            if (goods.get(i).getVisible() == false) {
                goods.remove(i);
                size--;
                i--;
            }
        }
        int row_num = size/4;
        int last_col_num = size%4;
        modelMap.put("rownum",row_num);
        modelMap.put("lcolnum",last_col_num);
        modelMap.put("goods", goods);
        return "customerLearnvideo";
    }

    @RequestMapping("/ebook")
    public String toEbook(ModelMap modelMap, HttpSession session){
        List<Goods> goods = goodsService.findGoodsByGclassId("ebook");
        int size = goods.size();
        Object temp = session.getAttribute("curr_customer");
        if (temp == null || ((Customer) temp).getPrivilege() == false) {
            for (int i = 0; i < size; i++) {
                if (goods.get(i).getRestriction() == true) {
                    goods.remove(i);
                    size--;
                    i--;
                }
            }
        }
        for (int i = 0; i < size; i++) {
            if (goods.get(i).getVisible() == false) {
                goods.remove(i);
                size--;
                i--;
            }
        }
        int row_num = size/4;
        int last_col_num = size%4;
        modelMap.put("rownum",row_num);
        modelMap.put("lcolnum",last_col_num);
        modelMap.put("goods", goods);
        return "customerEbook";
    }
    @RequestMapping("/paper")
    public String toPaper(ModelMap modelMap, HttpSession session){
        List<Goods> goods = goodsService.findGoodsByGclassId("paper");
        int size = goods.size();
        Object temp = session.getAttribute("curr_customer");
        if (temp == null || ((Customer) temp).getPrivilege() == false) {
            for (int i = 0; i < size; i++) {
                if (goods.get(i).getRestriction() == true) {
                    goods.remove(i);
                    size--;
                    i--;
                }
            }
        }
        for (int i = 0; i < size; i++) {
            if (goods.get(i).getVisible() == false) {
                goods.remove(i);
                size--;
                i--;
            }
        }
        int row_num = size/4;
        int last_col_num = size%4;
        modelMap.put("rownum", row_num);
        modelMap.put("lcolnum", last_col_num);
        modelMap.put("goods", goods);
        return "customerPaper";
    }
    @RequestMapping("/flowchart")
    public String toFlowchart(ModelMap modelMap, HttpSession session){
        List<Goods> goods = goodsService.findGoodsByGclassId("flowchart");
        int size = goods.size();
        Object temp = session.getAttribute("curr_customer");
        if (temp == null || ((Customer) temp).getPrivilege() == false) {
            for (int i = 0; i < size; i++) {
                if (goods.get(i).getRestriction() == true) {
                    goods.remove(i);
                    size--;
                    i--;
                }
            }
        }
        for (int i = 0; i < size; i++) {
            if (goods.get(i).getVisible() == false) {
                goods.remove(i);
                size--;
                i--;
            }
        }
        int row_num = size/4;
        int last_col_num = size%4;
        modelMap.put("rownum", row_num);
        modelMap.put("lcolnum", last_col_num);
        modelMap.put("goods", goods);
        return "customerFlowchart";
    }
    @RequestMapping("/protocol")
    public String toProtocol(ModelMap modelMap, HttpSession session){
        List<Goods> goods = goodsService.findGoodsByGclassId("protocol");
        int size = goods.size();
        Object temp = session.getAttribute("curr_customer");
        if (temp == null || ((Customer) temp).getPrivilege() == false) {
            for (int i = 0; i < size; i++) {
                if (goods.get(i).getRestriction() == true) {
                    goods.remove(i);
                    size--;
                    i--;
                }
            }
        }
        for (int i = 0; i < size; i++) {
            if (goods.get(i).getVisible() == false) {
                goods.remove(i);
                size--;
                i--;
            }
        }
        int row_num = size/4;
        int last_col_num = size%4;
        modelMap.put("rownum", row_num);
        modelMap.put("lcolnum", last_col_num);
        modelMap.put("goods", goods);
        return "customerProtocol";
    }
    @RequestMapping("/studynote")
    public String toStudynote(ModelMap modelMap, HttpSession session){
        List<Goods> goods = goodsService.findGoodsByGclassId("note");
        int size = goods.size();
        Object temp = session.getAttribute("curr_customer");
        if (temp == null || ((Customer) temp).getPrivilege() == false) {
            for (int i = 0; i < size; i++) {
                if (goods.get(i).getRestriction() == true) {
                    goods.remove(i);
                    size--;
                    i--;
                }
            }
        }
        for (int i = 0; i < size; i++) {
            if (goods.get(i).getVisible() == false) {
                goods.remove(i);
                size--;
                i--;
            }
        }
        int row_num = size/4;
        int last_col_num = size%4;
        modelMap.put("rownum", row_num);
        modelMap.put("lcolnum", last_col_num);
        modelMap.put("goods", goods);
        return "customerStudynote";
    }

    @RequestMapping("/item")
    public String toItem(ModelMap modelMap, String id, HttpSession session) {
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        Goods goods = goodsService.findGoodsById(id);
        String category = gclassService.findGclassById(goods.getGclassId()).getCname();
        List<Orders> orders = ordersService.findOrdersByGoodsId(id);
        modelMap.put("item", goods);
        modelMap.put("category", category);
        modelMap.put("orders", orders);
        return "customerItem";
    }

    @RequestMapping("/orders")
    public String lookOrders(ModelMap modelMap, HttpSession session) {
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        String customer_id = ((Customer) session.getAttribute("curr_customer")).getId();
        List<Orders> orders_list = ordersService.findOrdersIdByCustomerId(customer_id);
        int size = orders_list.size();
        List<Goods> all_goods_in_orders = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            String good_id = orders_list.get(i).getGoodsId();
            all_goods_in_orders.add(goodsService.findGoodsById(good_id));
        }
        modelMap.put("orders", orders_list);
        modelMap.put("goods_in_orders", all_goods_in_orders);
        return "customerOrders";
    }

    @RequestMapping("/comment")
    public String seeOrAddComment(String id, ModelMap modelMap) {
        Orders orders = ordersService.findOrdersById(id);
        if (orders.getComment() == null) {
            modelMap.put("orderid", orders.getId());
            return "customerAddComment";
        } else {
            modelMap.put("comment", orders.getComment());
            return "customerSeeComment";
        }
    }

    @RequestMapping("/addcomment")
    public String addComment(String id, String comment) {
        Orders orders = ordersService.findOrdersById(id);
        orders.setComment(comment);
        ordersService.updateOrders(orders);
        return "customerOrders";
    }

    @RequestMapping("/topay")
    public String toPay(ModelMap modelMap, @RequestParam("itemId_list") String[] itemId_list, HttpSession session) {
        if (session.getAttribute("curr_customer") == null) {
            return "customerLogin";
        }
        int size = itemId_list.length;
        List<Goods> goods_list = new ArrayList<>(size);
        List<String> class_list = new ArrayList<>(size);
        BigDecimal total_price = new BigDecimal("0");
        int total_size = 0;
        for (int i = 0; i < size; i++) {
            Goods goods = goodsService.findGoodsById(cartService.findItemById(itemId_list[i]).getGoodsId());
            class_list.add(gclassService.findGclassById(goods.getGclassId()).getCname());
            goods_list.add(goods);
            total_price = total_price.add(goods.getPrice());
            total_size += goods.getSize();
        }
        modelMap.put("itemId_list", itemId_list);
        modelMap.put("goods_list", goods_list);
        modelMap.put("total_size", total_size);
        modelMap.put("total_price", total_price);
        return "pay";
    }

    @RequestMapping("/pay")
    public String paySuccess(ModelMap modelMap, String[] itemId_list, HttpSession session) {
        int size = itemId_list.length;
        for (int i = 0; i < size; i++) {
            Orders order = new Orders();
            order.setId(IDGenerator.getId());
            order.setCustomerId(((Customer) session.getAttribute("curr_customer")).getId());
            order.setGoodsId((cartService.findItemById(itemId_list[i])).getGoodsId());
            order.setStatus(false);
            order.setCreateTime(new Date());
            cartService.deleteItemById(itemId_list[i]);
            ordersService.insertOrder(order);
        }
        return lookOrders(modelMap, session);
    }

    @RequestMapping("/search")
    public String searchGoods(String name, ModelMap modelMap, HttpSession session){
        List<Goods> goods = goodsService.findGoodsByName(name);
        int size = goods.size();
        Object temp = session.getAttribute("curr_customer");
        if (temp == null || ((Customer) temp).getPrivilege() == false) {
            for (int i = 0; i < size; i++) {
                if (goods.get(i).getRestriction() == true) {
                    goods.remove(i);
                    size--;
                    i--;
                }
            }
        }
        int row_num = size/4;
        int last_col_num = size%4;
        modelMap.put("rownum", row_num);
        modelMap.put("lcolnum", last_col_num);
        modelMap.put("goods",goods);
        return "searchresult";
    }

    @RequestMapping("/contact")
    public String contact() {
        return "contact";
    }
}

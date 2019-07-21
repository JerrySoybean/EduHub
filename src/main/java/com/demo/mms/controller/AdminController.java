package com.demo.mms.controller;

import com.demo.mms.common.domain.Admin;
import com.demo.mms.common.domain.Goods;
import com.demo.mms.common.domain.Orders;
import com.demo.mms.service.AdminService;
import com.demo.mms.service.GoodsService;
import com.demo.mms.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import com.demo.mms.common.domain.Customer;
import com.demo.mms.service.CustomerService;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/tologin")
    public String toLogin(HttpSession session) {
        // session.setAttribute("curr_admin", null);
        return "adminLogin";
    }
    @RequestMapping("/login")
    public String login(ModelMap modelMap, String name, String password, HttpSession session) {
        String msg = null;
        Admin admin = adminService.findAdminByName(name);
        if (admin == null) {
            msg = "User name doesn't exist";
            modelMap.put("msg", msg);
            return "adminLogin";
        } else {
            String pwd = admin.getPassword();
            if (pwd != null && pwd.equals(password)) {
                msg = "Login success";
                modelMap.put("msg", msg);
                session.setAttribute("curr_admin", admin);
                return "adminHome";
            } else {
                msg = "Password error";
                modelMap.put("msg", msg);
                return "adminLogin";
            }
        }
    }

    @RequestMapping("/customers")
    public String listCus(ModelMap modelMap, HttpSession session){
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        List<Customer> allCustomer = customerService.findAllCustomer();
        modelMap.put("allCus",allCustomer);
        return "adminCustomers";
    }

    @RequestMapping("/customer")
    public String Cust(ModelMap modelMap, String id){
        Customer customer = customerService.findCustomerById(id);
        modelMap.put("cus", customer);
        return "adminCustomer";
    }


    @RequestMapping("submit")
    public String submit(ModelMap modelMap, Customer customer){
        customerService.updateCustomer(customer);
        modelMap.put("cus", customer);
        return "update_success";
    }

    @RequestMapping("orders")
    public String allOrders(ModelMap modelMap, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        List<Orders> orders_list = ordersService.findAllOrders();
        int size = orders_list.size();
        List<Goods> goods_list = new ArrayList<>(size);
        List<Customer> customer_list = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            String customer_id = orders_list.get(i).getCustomerId();
            customer_list.add(customerService.findCustomerById(customer_id));
            String good_id = orders_list.get(i).getGoodsId();
            goods_list.add(goodsService.findGoodsById(good_id));
        }
        modelMap.put("all_orders", orders_list);
        modelMap.put("all_customers", customer_list);
        modelMap.put("all_goods", goods_list);
        return "adminOrders";
    }

    @RequestMapping("/order")
    public String editOrder(ModelMap modelMap, String id) {
        Orders order = ordersService.findOrdersById(id);
        modelMap.put("order", order);
        return "adminOrder";
    }

    @RequestMapping("/updateorder")
    public String submitOrder(String id, boolean newstatus, ModelMap modelMap, HttpSession session) {
        Orders order = ordersService.findOrdersById(id);
        if (order.getStatus() && newstatus) {

        } else if (order.getStatus() && !newstatus) {
            order.setStatus(newstatus);
            order.setFinishTime(null);
            ordersService.updateOrders(order);
        } else if (!order.getStatus() && newstatus) {
            order.setStatus(newstatus);
            order.setFinishTime(new Date());
            ordersService.updateOrders(order);
        } else {

        }
        return allOrders(modelMap, session);
    }

    @RequestMapping("/alterinfo")
    public String alterInfo(ModelMap modelMap, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        return "adminInfo";
    }

    @RequestMapping("/submitnewinfo")
    public String updateAdmin(Admin admin, HttpSession session) {
        adminService.updateAdmin(admin);
        session.setAttribute("curr_admin", admin);
        return "adminHome";
    }
}

package com.demo.mms.controller;

import com.demo.mms.common.domain.*;
import com.demo.mms.common.utils.IDGenerator;
import com.demo.mms.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.*;

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
    @Autowired
    private GclassService gclassService;

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


    @RequestMapping("/submit")
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
    public String alterInfo(HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        return "adminInfo";
    }

    @RequestMapping("/submitnewinfo")
    public String updateAdmin(ModelMap modelMap, Admin admin, String password2, String password3, HttpSession session) {
        String msg = null;
        Admin admin_db = (Admin) session.getAttribute("curr_admin");
        if (!admin.getPassword().equals(admin_db.getPassword())) {
            msg = "Wrong password";
            modelMap.put("msg", msg);
            return "adminInfo";
        }
        if (password2 != "") {
            if (password2.equals(password3)) {
                admin.setPassword(password2);
            } else {
                msg = "Two passwords are different";
                modelMap.put("msg", msg);
                return "adminInfo";
            }
        }
        adminService.updateAdmin(admin);
        session.setAttribute("curr_admin", admin);
        return "adminHome";
    }

    @RequestMapping("/item")
    public String toItem(ModelMap modelMap, String id) {
        Goods item = goodsService.findGoodsById(id);
        modelMap.put("item", item);
        return "adminItem";
    }

    @RequestMapping("/updateitem")
    public String updateItem(Goods item, String newPicturePath, ModelMap modelMap, HttpSession session) {
        if (!newPicturePath.equals("")) {
            int last_index = newPicturePath.lastIndexOf('\\');
            if (last_index != -1) {
                item.setPicturePath("\\images\\" + newPicturePath.substring(last_index + 1));
            } else {
                item.setPicturePath("\\images\\" + newPicturePath);
            }
        }
        goodsService.updateItem(item);
        return allGoods(modelMap, session);
    }

    @RequestMapping("/toadd")
    public String toAdd(HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        return "adminAdditem";
    }

    @RequestMapping("/additem")
    public String addItem(ModelMap modelMap, Goods item, String newPicturePath, HttpSession session) {
        String msg = null;
        if (item.getName() == "") {
            msg = "Name cannot be empty";
            modelMap.put("msg", msg);
            return "adminAdditem";
        }
        if (item.getPrice() == null) {
            msg = "Price cannot be empty";
            modelMap.put("msg", msg);
            return "adminAdditem";
        }
        if (item.getSize() == null) {
            msg = "Size cannot be empty";
            modelMap.put("msg", msg);
            return "adminAdditem";
        }
        item.setId(IDGenerator.getId());
        item.setUploadDate(new Date());
        item.setThumbUp(0);
        if (!newPicturePath.equals("")) {
            int last_index = newPicturePath.lastIndexOf('\\');
            if (last_index != -1) {
                item.setPicturePath("\\images\\" + newPicturePath.substring(last_index + 1));
            } else {
                item.setPicturePath("\\images\\" + newPicturePath);
            }
        }
        goodsService.addGoods(item);
        return allGoods(modelMap, session);
    }

    @RequestMapping("/allgoods")
    public String allGoods(ModelMap modelMap, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        List<Goods> goods = goodsService.findAllGoods();
        int size = goods.size();
        List<String> classname = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            classname.add(gclassService.findGclassById(goods.get(i).getGclassId()).getCname());
        }
        modelMap.put("goods", goods);
        modelMap.put("classname", classname);
        return "adminAllgoods";
    }

    @RequestMapping("/ebook")
    public String ebook(ModelMap modelMap, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        List<Goods> goods = goodsService.findGoodsByGclassId("ebook");
        int size = goods.size();
        List<String> classname = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            classname.add("E book");
        }
        modelMap.put("goods", goods);
        modelMap.put("classname", classname);
        return "adminEbook";
    }

    @RequestMapping("/learnvideo")
    public String learnvideo(ModelMap modelMap, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        List<Goods> goods = goodsService.findGoodsByGclassId("video");
        int size = goods.size();
        List<String> classname = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            classname.add("Learning Video");
        }
        modelMap.put("goods", goods);
        modelMap.put("classname", classname);
        return "adminLearnvideo";
    }

    @RequestMapping("/paper")
    public String paper(ModelMap modelMap, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        List<Goods> goods = goodsService.findGoodsByGclassId("paper");
        int size = goods.size();
        List<String> classname = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            classname.add("Test Paper Analysis");
        }
        modelMap.put("goods", goods);
        modelMap.put("classname", classname);
        return "adminPaper";
    }

    @RequestMapping("/flowchart")
    public String flowchart(ModelMap modelMap, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        List<Goods> goods = goodsService.findGoodsByGclassId("flowchart");
        int size = goods.size();
        List<String> classname = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            classname.add("Flowchart");
        }
        modelMap.put("goods", goods);
        modelMap.put("classname", classname);
        return "adminFlowchart";
    }

    @RequestMapping("/protocol")
    public String protocol(ModelMap modelMap, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        List<Goods> goods = goodsService.findGoodsByGclassId("protocol");
        int size = goods.size();
        List<String> classname = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            classname.add("Experiment Protocol");
        }
        modelMap.put("goods", goods);
        modelMap.put("classname", classname);
        return "adminProtocol";
    }

    @RequestMapping("/studynote")
    public String studynote(ModelMap modelMap, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        List<Goods> goods = goodsService.findGoodsByGclassId("note");
        int size = goods.size();
        List<String> classname = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            classname.add("Study Notes");
        }
        modelMap.put("goods", goods);
        modelMap.put("classname", classname);
        return "adminStudynote";
    }

    @RequestMapping("/vip")
    public String vip(ModelMap modelMap, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        List<Goods> goods = goodsService.findGoodsByGclassId("vip");
        int size = goods.size();
        List<String> classname = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            classname.add("Vip");
        }
        modelMap.put("goods", goods);
        modelMap.put("classname", classname);
        return "adminVip";
    }

    @RequestMapping("/bill")
    public String Bill(ModelMap modelMap, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        List<Orders> orders = ordersService.findAllOrders();
        int size = orders.size();
        BigDecimal total = new BigDecimal("0");
        for (int i = 0; i < size; i++) {
            total = total.add(goodsService.findGoodsById(orders.get(i).getGoodsId()).getPrice());
        }
        modelMap.put("total", total);
        return "adminBill";
    }

    @RequestMapping("/toaddadmin")
    public String toAddAdmin(HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        return "adminAddAdmin";
    }

    @RequestMapping("/addadmin")
    public String addAdmin(ModelMap modelMap, Admin admin, String password2, HttpSession session) {
        if(session.getAttribute("curr_admin") == null) {
            return "adminLogin";
        }
        String msg = null;
        String newName = admin.getName();
        if (newName == "") {
            msg = "Name cannot be empty";
            modelMap.put("msg", msg);
            return "adminAddAdmin";
        }
        if(adminService.findAdminByName(newName) != null) {
            msg = "This name has been registered";
            modelMap.put("msg", msg);
            return "adminAddAdmin";
        }
        if (admin.getPassword() == null) {
            msg = "Password cannot be empty";
            modelMap.put("msg", msg);
            return "adminAddAdmin";
        }
        if (!admin.getPassword().equals(password2)) {
            msg = "Two passwords are different";
            modelMap.put("msg", msg);
            return "adminAddAdmin";
        }
        admin.setId(IDGenerator.getId());
        adminService.addAdmin(admin);
        return "adminHome";
    }
}

package com.demo.mms.controller;

import com.demo.mms.common.domain.Admin;
import com.demo.mms.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import com.demo.mms.common.domain.Customer;
import com.demo.mms.service.CustomerService;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;
    @Autowired
    private CustomerService customerService;

    @RequestMapping("/tologin")
    public String login() {
        return "adminLogin";
    }
    @RequestMapping("/login")
    public String login(ModelMap modelMap, String name, String password, HttpSession session) {
        String msg = null;
        Admin admin = adminService.findAdminByName(name);
        if (admin == null) {
            msg = "User name doesn't exist";
            modelMap.put("msg", msg);
            return "customerLogin";
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
                return "customerLogin";
            }
        }
    }

    @RequestMapping("/customers")
    public String listCus(ModelMap modelMap, HttpSession session){
        if(session.getAttribute("curr_admin") == null) {
            return "login";
        }
        List<Customer> allCustomer = customerService.findAllCustomer();
        modelMap.put("allCus",allCustomer);
        return "adminCustomers";
    }

    @RequestMapping("/customer")
    public  String Cust(ModelMap modelMap, String id){
        Customer customer = customerService.findCustomerById(id);
        modelMap.put("cus", customer);
        return "adminCustomer";
    }


    @RequestMapping("submit")
    public  String submit(ModelMap modelMap, Customer customer){
        System.out.println(customer.getName());
        customerService.updateCustomer(customer);
        modelMap.put("cus", customer);
        return "update_success";
    }
}

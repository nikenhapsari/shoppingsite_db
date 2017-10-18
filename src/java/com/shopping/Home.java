/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shopping;

import com.shopping.model.Product;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author nikenhapsari
 */
@Controller
@RequestMapping("/home")
public class Home {

    @Autowired
    ProductServices ps;
    
    List<Product> productcart = new ArrayList<Product>();
    
    @RequestMapping()
    public String home(HttpSession session, Model model) {
        List<Product> daftarProduk = new ArrayList<Product>();
        daftarProduk= ps.findAll();
        model.addAttribute("msg", "HALAMAN UTAMA NIKEN SHOP");
        model.addAttribute("daftarProduk",daftarProduk);
        session.setAttribute("productcart", productcart);
        return "home";
    }
    
}

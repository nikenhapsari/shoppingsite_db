/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shopping.controller;

import com.shopping.model.Product;
import com.shopping.ProductServices;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author nikenhapsari
 */

@Controller
@RequestMapping("/detail")
public class ProductController {
    @Autowired
    ProductServices ps;
    
     List<Product> productcart = new ArrayList<Product>();
    
     @RequestMapping("/{id}")
    public String getDetail(HttpSession session,@PathVariable Integer id, Model model,HttpServletRequest request) throws Exception  {
        Product p = ps.findById(id);
         System.out.println(p.getNamaBarang());
        model.addAttribute("p",p);
        return "detail";
    }
    @RequestMapping(value="/tambahkan")
    public String keranjang(HttpSession session, Model model) {
        List<Product> cart = (List<Product>) session.getAttribute("productcart");
        cart.add((Product) session.getAttribute("detailproduk"));
        session.removeAttribute("detailproduk");
        session.setAttribute("productcart", productcart);
        return "tambah";
    }
}

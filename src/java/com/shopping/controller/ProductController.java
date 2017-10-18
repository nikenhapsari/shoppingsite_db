/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shopping.controller;

import com.shopping.Product.Keranjang;
import com.shopping.Product.Product;
import com.shopping.ProductServices;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
     @RequestMapping(value="/{id}")
    public String getDetail(HttpSession session,@PathVariable("id") Integer id, Model model,HttpServletRequest request) throws Exception  {
        ProductServices products = new ProductServices();
        Product p = products.findById(Integer.parseInt(request.getParameter(id.toString())));
         System.out.println(p.getNamaBarang());
        model.addAttribute("p",p);
        return "detail";
    }
}

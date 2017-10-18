/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shopping.controller;

import com.shopping.model.Product;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author nikenhapsari
 */

@Controller
@RequestMapping("/productcart")
public class KeranjangController {
   
    @RequestMapping
    public String isi(){
        return "productcart";
    }
    
    @RequestMapping(value = "/hapus/{id}")
    public String isiKeranjang(HttpSession session,@PathVariable Integer id){
        List<Product> pr = (List<Product>) session.getAttribute("productcart");
        int penampung=0;
        for (int i = 0; i < pr.size(); i++) {
            if(pr.get(i).getId()==id){
                penampung=i;
            }
        }
        pr.remove(penampung);
        return "pindahkeranjang";
    }
}

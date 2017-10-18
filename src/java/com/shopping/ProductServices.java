/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shopping;

import com.shopping.Product.Product;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

/**
 *
 * @author nikenhapsari
 */
@Repository
@Transactional
public class ProductServices {

    @PersistenceContext
    private EntityManager em;

    public ProductServices() {
    }

    /**
     * @return the em
     */
    public EntityManager getEm() {
        return em;
    }

    /**
     * @param em the em to set
     */
    public void setEm(EntityManager em) {
        this.em = em;
    }

    public List<Product> findAll() {
        List<Product> products;
        products = em.createNamedQuery("Product.findAll").getResultList();
        return products;
    }

    public Product findById(Integer id) {
        Product products = em.find(Product.class, id);
        return products;
    }
}

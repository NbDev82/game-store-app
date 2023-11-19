/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.InvoiceDAO;
import com.myproject.game.store.app.v1.resources.model.entity.Invoice;
import com.myproject.game.store.app.v1.resources.model.entity.Order;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
/**
 *
 * @author Van Hoang
 */
public class InvoiceDAOImpl implements InvoiceDAO{
    Logger logger 
            = Logger.getLogger( 
                OrderDAOImpl.class.getName());
    @Override
    public Invoice createInvoice(Order order) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction transaction = em.getTransaction();
        int totalAmount = order.getTotalAmount() + order.getTax();
        LocalDateTime curentDateTime = LocalDateTime.now();
        Timestamp created = Timestamp.valueOf(curentDateTime);
        Invoice invoice = new Invoice(true,totalAmount,created,order);
        try{
            transaction.begin();
            em.persist(invoice);
            order.setStatus(true);
            transaction.commit();
            return invoice;
        }catch (Exception e) {
            logger.warning(e.getMessage());
            transaction.rollback();
            return null;
        } finally {
            em.close();
        }
    }
    
}

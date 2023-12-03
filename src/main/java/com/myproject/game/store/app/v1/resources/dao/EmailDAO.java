/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Invoice;
import java.io.UnsupportedEncodingException;

/**
 *
 * @author Van Hoang
 */
public interface EmailDAO {
    boolean sendInvoice(String from, String to, Invoice invoice, boolean bodyIsHTML);
    boolean sendEmail(String from, String to, String subject, String body, boolean bodyIsHTML) throws UnsupportedEncodingException ;
}

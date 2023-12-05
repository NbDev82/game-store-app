/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.dao.EmailDAO;
import com.myproject.game.store.app.v1.resources.model.entity.Invoice;
import com.myproject.game.store.app.v1.resources.model.entity.OrderItem;
import java.io.UnsupportedEncodingException;
import java.util.Base64;
import java.util.Properties;
import java.util.logging.Level;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.logging.Logger;

/**
 *
 * @author Van Hoang
 */
public class EmailDAOImpl implements EmailDAO{
    Logger logger 
                = Logger.getLogger( 
                    EmailDAOImpl.class.getName());

    @Override
    public boolean sendEmail(String from, String to, String subject, String body, boolean bodyIsHTML) throws UnsupportedEncodingException {
        try {
            // 1 - get a mail session
            Properties props = new Properties();
            props.put("mail.transport.protocol", "smtps");
            props.put("mail.smtps.host", "smtp.gmail.com");
            props.put("mail.smtps.port", 465);
            props.put("mail.smtps.auth", "true");
            props.put("mail.smtps.quitwait", "false");
            Session session = Session.getDefaultInstance(props);
            session.setDebug(true);
            // 2 - create a message
            Message message = new MimeMessage(session);
            String subjectUTF8 = "=?UTF-8?B?" + Base64.getEncoder().encodeToString(subject.getBytes("UTF-8")) + "?=";
            message.setSubject(subjectUTF8);
            if (bodyIsHTML) {
                message.setContent(body, "text/html; charset=UTF-8");
            } else {
                message.setContent(body, "text/plain; charset=UTF-8");
            }
            // 3 - address the message
            Address fromAddress = new InternetAddress(from);
            Address toAddress = new InternetAddress(to);
            message.setFrom(fromAddress);
            message.setRecipient(Message.RecipientType.TO, toAddress);

            // 4 - send the message
            Transport transport = session.getTransport();
            transport.connect("gamestoreapp1@gmail.com", "awdw ztyh lefw dzbr");
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
            return true;
        } catch (MessagingException e) {
            logger.info(e.getMessage());
            return false;
        }
    }

    @Override
    public boolean sendInvoice(String from, String to, Invoice invoice, boolean bodyIsHTML) {
        
        String subject = "Thông tin hóa đơn của order có id " + invoice.getInvoiceId().toString();
        String items = "";
        for(OrderItem orderItem: invoice.getOrder().getOrderItems()){
            items += orderItem.getGame().getGameName() + "\n";
        }
        String status = invoice.isStatus()?"Đã thanh toán": " Chưa thanh toán";
        String body = "Order id: "+invoice.getInvoiceId().toString() +"\n"
                    + "Danh sách sản phẩm: \n"
                    + items
                    +"Trạng thái: "+status + "\n"
                    + "Phương thức: " + invoice.getOrder().getCard().getCardType()+"\n"
                    + "Tổng: "+invoice.getTotalAmount() + " VNĐ";
        
        try {
            return sendEmail(from, to, subject, body, bodyIsHTML);
        } catch (UnsupportedEncodingException ex) {
            Logger.getLogger(EmailDAOImpl.class.getName()).log(Level.SEVERE, null, ex.getMessage());
            return false;
        }
    }
    
}

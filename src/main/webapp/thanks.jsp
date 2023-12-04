<%-- 
    Document   : purchase
    Created on : Nov 3, 2023, 1:18:06 AM
    Author     : Van Hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel ="stylesheet" href="assets/css/checkout-stylesheet.css" type = "text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/checkout-js.js"></script>
    </head>

    <body id="transparentBG" style="background-color: #1b2838;">
        <img style="position: absolute; width: 800px; height:700px;visibility: hidden;" src="assets/img/games.jpg">
        
        <form action="checkout" id="checkoutForm" method="post" style="width: 40%; margin-top: 5%;" class="container fade-in">
            <c:choose>
                <c:when test="${isSuccess != null and isSuccess}">
                    <div class="container" style="text-align: center;">
                        <h1 style="color: whitesmoke; font-size: 40px;">Payment Successful!</h1>
                        <p  style="color: whitesmoke; font-size: 25px;">Your game will be sent to the specified email.</p>
                        <a href="index.html">
                            <button type="button" class="btn btn-success">Back to home page</button>
                        </a>
                    </div>
                    <div class="container">
                    </div>
                </c:when>
                <c:otherwise>
                    <c:if test="${message != null}">
                        <div class="alert alert-danger">
                            <strong>Error: </strong> <h2 name="message">${message}</h2>
                        </div>
                    </c:if>
                    <div class="container" style="text-align: center;">
                        <p  style="color: whitesmoke; font-size: 25px;">Type your security code of your card!!</p>
                        <input style="background-color: #e8f0fe;" type="password" name="securityCode" placeholder="Enter security code" required>
                        <button type="submit" class="button" role="button" style="background-color: #467b74; color: #000000;">
                            <input type="hidden" name="action" value="checkCode">
                            <input type="hidden" name="amount" value="${order.tax + order.totalAmount}">
                            <span>Checkout</span>
                        </button>
                        <a href="/game-store-app-v1/home">
                            <button type="button" class="btn btn-success">Back to home page</button>
                        </a>
                    </div>
                    <div class="container">
                    </div>
                </c:otherwise>
            </c:choose>
            
        </form>

    </body>
</html>

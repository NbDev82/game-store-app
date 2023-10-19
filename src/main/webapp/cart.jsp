<%-- 
    Document   : cart
    Created on : Aug 30, 2023, 10:30:25 PM
    Author     : Van Hoang
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="utf-8">
    <title>Shopping Cart</title>
<!--    <style>
        body {
            background-image: url('assets/gif/giphy.gif');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel ="stylesheet" href="assets/css/cart.css" type = "text/css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
    <%--<%@ include file="navbar.jsp"%>--%>
    <div class="container">
        <form class="cart" action="cart"
            style="margin-bottom: 30px">
            <div>
                <div id="message-container">
                    <div class="alert alert-success" role="alert">
                        <span id="message-text">${message}</span>
                    </div>
                </div>
                <br> <h1>MY SHOPPING CART</h1>
                <br>
                <c:choose>
                    <c:when test="${cartItems.isEmpty()}">
                        <image src="assets/img/emptyCart.png" style="width: 640px; height: 360px;">
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="gameOrder" items="${cartItems}">
                            <div class="card card-product">
                                <div class="product-image">
                                    <i class="IconPlanSmall" style="justify-content: center; align-items: center; display: inline-flex"></i>
                                    <image src="">
                                </div>
                                <div class="product-title" >${gameOrder.name}</div>
                                <div class="product-content" style="">${gameOrder.name}</div>
                                <c:choose>
                                    <c:when test="${gameOrder.isDiscount()}">
                                        <div class="product-initial-price">${gameOrder.initialPrice}$</div>
                                        <div class="product-discount-price">/${gameOrder.discountPrice}$</div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="product-discount-price">${gameOrder.initialPrice}$</div>
                                    </c:otherwise>
                                </c:choose>
                                <div class="product-details" >
                                    <p>Product Description: ${gameOrder.description}.</p>
                                </div>
                                <div style="left: 90%; bottom: 30%; position: absolute; ">
                                    <a class="btn btn-danger" href="cart?action=removeFromCart&id=${gameOrder.gameId}">
                                        <span class="glyphicon glyphicon-trash"></span>remove</a>
                                </div>
                            </div>
                        </c:forEach>
                        <div style="display:block; position: relative; ">
                            <h4 style="display:inline-block;">Estimated total:</h4> 
                            <!--<h4 class="product-initial-price" style="display:inline-block; text-decoration: line-through;">$45</h4>-->
                            <h4 class="product-discount-price" style="display:inline-block;">${totalPrice}$</h4>
                        </div>
                        <section>
                            
                            <div class="row">
                                <div><form></form></div>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <form action="cart" method="post">
                                        <a class="btn btn-purchase pull-left" style="margin-top: 15px; margin-left: 20px">
                                           <input type="hidden" name="action" value="clearCart">
                                           <input class="btn btn-purchase pull-left" type="submit" value="Clear Cart">
                                        </a>
                                    </form>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <form action="cart" method="post">
                                        <a class="btn btn-purchase pull-left" style="margin-top: 15px; margin-left: 20px">
                                           <input type="hidden" name="action" value="purchase">
                                           <input class="btn btn-purchase pull-left" type="submit" value="Purchase">
                                        </a>
                                    </form>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <a href="/game-store-app-v1" class="btn btn-purchase pull-left" style="margin-top: 15px; margin-left: 20px">
                                        <input class="btn btn-purchase pull-left" value="Continue Shopping">
                                    </a>
                                </div>
                            </div>
                        </section>
                    </c:otherwise>
                </c:choose>
            </div>
        </form>   
    </div>
     <c:if test="${message != null and message != ''}">
        <script>
            document.getElementById('message-container').classList.add('active');
        </script>
    </c:if>
    <script src="js/cart.js"/>
    <%--<%@ include file="footer.jsp"%>--%>
</body>
</html>

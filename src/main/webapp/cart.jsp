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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel ="stylesheet" href="assets/css/cart.css" type = "text/css"/>
    <link rel="icon" href="assets/icons/shopping-cart.png" type="image/x-icon">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
    <%@ include file="header.jsp"%>
    <div class="container">
        <div style="margin-bottom: 30px">
            <div id="message-container">
                <div class="alert alert-success" role="alert">
                    <span id="message-text">${message}</span>
                </div>
            </div>
            <br> <h1>MY SHOPPING CART</h1>
            <br>
            <c:choose>
                <c:when test="${cart.games.isEmpty() or cart == null}">
                    <div class="empty_img">
                        <image class="empty_img" src="assets/img/emptyCart.png">
                    </div>
                    <div class="empty_img">
                        <a href="/game-store-app-v1" class="btn btn-purchase pull-left" style="margin-top: 15px; margin-left: 20px">
                            <input class="btn btn-purchase" value="Continue Shopping">
                        </a>
                    </div>
                </c:when>
                <c:otherwise>
                    <c:forEach var="gameOrder" items="${cart.games}">
                        <div class="card card-product">
                            <div class="product-image">
                                <i class="IconPlanSmall" style="justify-content: center; align-items: center; display: inline-flex"></i>
                                <image src="">
                            </div>
                            <div class="product-title" >${gameOrder.gameName}</div>
                            <div class="product-content" style="">${gameOrder.gameName}</div>
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
                                <p>Product Description: ${gameOrder.content}.</p>
                            </div>
                            <div style="left: 85%; bottom: 30%; position: absolute; ">
                                <form action="cart" method="post">
                                    <input type="hidden" name="action" value="removeItem">
                                    <input type="hidden" name="gameId" value="${gameOrder.gameId}">
                                    <input type="hidden" name="cartId" value="${cart.cartId}">
                                    <input class="button" type="submit" value="Remove">
                                </form>
                            </div>
                        </div>
                    </c:forEach>
                    <div style="display:block; position: relative; ">
                        <h4 style="display:inline-block;">Estimated total:</h4> 
                        <h4 class="product-discount-price" style="display:inline-block;">${cart.totalPrice}$</h4>
                    </div>
                    <section>
                        <div class="row">
                            <div><form></form></div>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <form action="cart" method="post">
                                    <button type="submit" class="button" style=" margin-left: 37%; margin-top:2%;height: 50px ;">
                                        <input type="hidden" name="action" value="clearCart">
                                        <span style="color: whitesmoke; font-weight: 600;">Clear Cart</span>
                                    </button>
                                </form>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <form action="cart" method="get">
                                    <button type="submit" class="button" style=" margin-left: 37%; margin-top:2%;height: 50px ;">
                                        <input type="hidden" name="cartId" value="${cart.cartId}">
                                        <input type="hidden" name="action" value="createOrder">
                                        <span style="color: whitesmoke; font-weight: 600;">Create Order</span>
                                    </button>
                                </form>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <button type="submit" class="button" style=" margin-left: 37%; margin-top:2%;height: 50px ;">
                                    <a href="/game-store-app-v1">
                                    <span style="color: whitesmoke; font-weight: 600;">Continue Shopping</span>
                                </button>
                            </div>
                        </div>
                    </section>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
     <c:if test="${message != null and message != ''}">
        <script>
            document.getElementById('message-container').classList.add('active');
        </script>
    </c:if>
    <%@ include file="footer.jsp"%>
    <script src="js/cart.js"/>
</body>
</html>

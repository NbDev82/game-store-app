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
    <div id="message-container">
        <div class="alert alert-success" role="alert">
        <span id="message-text">${message}</span>
        </div>
    </div>
    <div class="container">
        <h1>SHOPPING CART</h1>
    </div>
    <c:choose>
        <c:when test="${cart.games.isEmpty() or cart == null}">
            <div class="empty_img">
                <image class="empty_img" src="assets/img/emptyCart.png">
            </div>
            <div class="empty_img">
                <a class="btn" href="/game-store-app-v1/home">Continue Shopping</a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="container">
                <section id="cart">
                    <c:forEach var="gameOrder" items="${cart.games}">
                        <article class="product">
                            <header>
                                <a class="remove">
                                    <img src="${gameOrder.gameimgs[0].imgLink}" alt="image">
                                    <form action="cart" method="post">
                                        <input type="hidden" name="action" value="removeItem">
                                        <input type="hidden" name="gameId" value="${gameOrder.gameId}">
                                        <input type="hidden" name="cartId" value="${cart.cartId}">
                                        <input class="h3" type="submit" value="Remove">
                                    </form>
                                </a>
                            </header>
                            <div class="content">
                                <h1>${gameOrder.gameName}</h1>
                                ${gameOrder.content}
                            </div>
                            <footer class="content">
                                <h2 class="full-price">
                                    <c:choose>
                                        <c:when test="${gameOrder.isDiscount()}">
                                            ${gameOrder.discountPrice} VNĐ
                                        </c:when>
                                        <c:otherwise>
                                            ${gameOrder.initialPrice} VNĐ
                                        </c:otherwise>
                                    </c:choose>
                                </h2>
                                <h2 class="price">
                                    ${gameOrder.initialPrice} VNĐ
                                </h2>
                            </footer>
                        </article>
                    </c:forEach>
                </section>
            </div>
            <div class="container cart-total">
                <div style="margin-left: 10px">
                    <div class="left">
                        <h2 class="subtotal">Subtotal: <span>${cart.totalPrice}</span> VNĐ</h2>
                        <h3 class="tax">Taxes (10%): <span>${cart.totalPrice*0.1}</span> VNĐ</h3>
                    </div>
                    <div class="right">
                        <h1 class="total">Total: <span>${cart.totalPrice + cart.totalPrice*0.1}</span> VNĐ</h1>
                        <form class="btn" action="cart" method="post">
                            <input type="hidden" name="action" value="clearCart">
                            <input type="hidden" name="cartId" value="${cart.cartId}">
                            <input class="h3" type="submit" value="Clear cart">
                        </form>
                        <form class="btn" action="cart" method="get">
                            <input type="hidden" name="cartId" value="${cart.cartId}">
                            <input type="hidden" name="action" value="createOrder">
                            <input class="h3" type="submit" value="Create Order">
                        </form>
                        <a class="btn" href="/game-store-app-v1/home">Home</a>
                    </div>
                </div>
            </div>
        </c:otherwise>
    </c:choose>
     <c:if test="${message != null and message != ''}">
        <script>
            document.getElementById('message-container').classList.add('active');
        </script>
    </c:if>
    <%@ include file="footer.jsp"%>
    <script src="assets/js/cart.js"/>
</body>
</html>

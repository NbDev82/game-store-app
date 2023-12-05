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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="theme-color" content="#171a21">
        <link href="https://store.akamai.steamstatic.com/public/shared/css/motiva_sans.css?v=Rc2hpzg2Ex3T&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/shared/css/shared_global.css?v=MIg0pk6GiDqL&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/shared/css/buttons.css?v=6PFqex5UPprb&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/css/v6/store.css?v=ATUmHvNe4brh&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/css/v6/home.css?v=wxoCs_oSWCMo&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/css/v6/creator_hub.css?v=e6oxFOI4knLo&amp;l=english"
              rel="stylesheet" type="text/css">
        <link
            href="https://store.akamai.steamstatic.com/public/shared/css/shared_responsive.css?v=cuGNP1dzetug&amp;l=english"
            rel="stylesheet" type="text/css">
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/jquery-1.8.3.min.js?v=.TZ2NKhB-nliU"></script>
        <script type="text/javascript">$J = jQuery.noConflict();</script>
        <script type="text/javascript">VALVE_PUBLIC_PATH = "https:\/\/store.akamai.steamstatic.com\/public\/";</script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/tooltip.js?v=.zYHOpI1L3Rt0"></script>

        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/shared_global.js?v=ArFQHXhltxfG&amp;l=english"></script>

        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/javascript/main.js?v=aVwmJL6U2Amu&amp;l=english"></script>

        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/javascript/dynamicstore.js?v=lgmDRJsAubdT&amp;l=english"></script>

        <script
            type="text/javascript">Object.seal && [Object, Array, String, Number].map(function (builtin) {
                Object.seal(builtin.prototype);
            });</script>
        <script type="text/javascript">
            document.addEventListener('DOMContentLoaded', function (event) {
                $J.data(document, 'x_readytime', new Date().getTime());
                $J.data(document, 'x_oldref', GetNavCookie());
                SetupTooltips({tooltipCSSClass: 'store_tooltip'});
            });
        </script>
        <script type="text/javascript"
src="https://store.akamai.steamstatic.com/public/javascript/broadcast_carousel.js?v=9VLmMDoSI24X&amp;l=english"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/javascript/home.js?v=V_dNbv3IFqxb&amp;l=english"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/javascript/cluster.js?v=zUvcVvp9xZmm&amp;l=english"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/shared_responsive_adapter.js?v=pSvIAKtunfWg&amp;l=english"></script>

        <meta name="twitter:card" content="summary_large_image">
        <meta name="Description" content="Steam is the ultimate destination for playing, discussing, and creating games.">

        <meta name="twitter:site" content="@steam"/>

        <meta property="og:title" content="Steam Store">
        <meta property="twitter:title" content="Steam Store">
        <meta property="og:type" content="website">
        <meta property="fb:app_id" content="105386699540688">
        <meta property="og:site" content="Steam">
        <meta property="og:url" content="https://store.steampowered.com/">
        <meta property="og:description"
              content="Steam is the ultimate destination for playing, discussing, and creating games.">
        <meta property="twitter:description"
              content="Steam is the ultimate destination for playing, discussing, and creating games.">

        <link rel="canonical" href="https://store.steampowered.com/">

        <link rel="image_src" href="https://cdn.akamai.steamstatic.com/store/home/store_home_share.jpg">
        <meta property="og:image" content="https://cdn.akamai.steamstatic.com/store/home/store_home_share.jpg">
        <meta name="twitter:image" content="https://cdn.akamai.steamstatic.com/store/home/store_home_share.jpg"/>

        <title>Welcome to Game Store</title>
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
</head>
    <body class="v6 infinite_scrolling responsive_page ">
        <div class="responsive_page_frame with_header">
            <div class="responsive_page_content">
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
            </div> 
            <%@ include file="footer.jsp"%>
        </div>
        <script src="assets/js/cart.js"/>
    </body>
</html>

<%-- 
    Document   : cart1
    Created on : Nov 12, 2023, 10:00:09 AM
    Author     : Van Hoang
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đơn đặt hàng</title>
        <link rel ="stylesheet" href="assets/css/order.css" type = "text/css"/>
        <link rel="icon" href="assets/icons/cargo.png" type="image/x-icon">
        <style>
            <c:forEach var="index" begin="1" end="${fn:length(order.cart.user.cardMethods)}">
                #btn-${index}:checked ~ .slides .slide:nth-child(${index}) {
                    transform: translatex(0);
                    opacity: 1;
                }
                #btn-1:not(:checked) ~ .slides .slide:nth-child(1) {
                    animation-name: swap-out;
                    animation-duration: 300ms;
                    animation-timing-function: linear;
                  }
            </c:forEach>
        </style>
    </head>
    <body id="transparentBG" style="background-color: #1b2838; 
                                                background-image: url(assets/img/games.jpg);">
    <div class="container center-container">
        <div class="card cart">
            <label class="title">PHIẾU ĐẶT HÀNG</label>
            <div class="steps">
                <div class="step">
                    <div>
                        <label ><b>ORDER ID </b></label>
                        <span name="orderId" value="${order.orderId}">${order.orderId}</span>
                        <label><b>THỜI GIAN ĐẶT HÀNG </b></label>
                        <span name="created" value="${order.created}">
                            <fmt:parseDate value="${order.created}" pattern="yyyy-MM-dd HH:mm:ss" var="parsedDate" />
                            <fmt:formatDate value="${parsedDate}" pattern="yyyy-MM-dd HH:mm:ss" var="formattedDate" />
                            ${formattedDate}
                        </span><br>
                        <label ><b>TÊN KHÁCH HÀNG </b></label>
                        <span name="userName" value="${order.cart.user.lastName}">${order.cart.user.firstName} ${order.cart.user.lastName}</span><br>
                        <label><b>DANH SÁCH SẢN PHẨM</b> </label><br>
                        <div class="payments">
                            <c:forEach var="orderItem" items="${order.orderItems}">
                                <div class="details">
                                    <span>${orderItem.game.gameName}</span>
                                    <span name="price" value="${orderItem.amount}">${orderItem.amount} VNĐ</span>
                                </div>
                            </c:forEach>
                        </div>
                        <label><b>TRẠNG THÁI</b> </label><br>
                        <c:choose>
                            <c:when test="${order.status}">
                                <span name="status" value="${order.status}">Đã thanh toán</span><br>
                            </c:when>
                            <c:otherwise>
                                <span name="status" value="${order.status}">Chưa thanh toán</span><br>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <hr>
                    <span>PHƯƠNG THỨC THANH TOÁN</span>
                    <c:choose>
                        <c:when test="${order.status}">
                            <c:choose>
                                <c:when test="${order.wallet == null}">
                                    <div class="card-method">
                                        <div class="card-method__info">
                                            <div class="card-method__logo"></div>
                                            <div class="card-method__chip">
                                                <svg class="card-method__chip-lines" role="img" width="20px" height="20px" viewBox="0 0 100 100" aria-label="Chip">
                                                    <g opacity="0.8">
                                                        <polyline points="0,50 35,50" fill="none" stroke="#000" stroke-width="2" />
                                                        <polyline points="0,20 20,20 35,35" fill="none" stroke="#000" stroke-width="2" />
                                                        <polyline points="50,0 50,35" fill="none" stroke="#000" stroke-width="2" />
                                                        <polyline points="65,35 80,20 100,20" fill="none" stroke="#000" stroke-width="2" />
                                                        <polyline points="100,50 65,50" fill="none" stroke="#000" stroke-width="2" />
                                                        <polyline points="35,35 65,35 65,65 35,65 35,35" fill="none" stroke="#000" stroke-width="2" />
                                                        <polyline points="0,80 20,80 35,65" fill="none" stroke="#000" stroke-width="2" />
                                                        <polyline points="50,100 50,65" fill="none" stroke="#000" stroke-width="2" />
                                                        <polyline points="65,65 80,80 100,80" fill="none" stroke="#000" stroke-width="2" />
                                                    </g>
                                                </svg>
                                                <div class="card-method__chip-texture"></div>
                                            </div>
                                            <div class="card-method__type">debit</div>
                                            <div class="card-method__number">
                                                <span class="card-method__digit-group">${order.card.cardNumber.substring(0, 4)}</span>
                                                <span class="card-method__digit-group">${order.card.cardNumber.substring(4, 8)}</span>
                                                <span class="card-method__digit-group">${order.card.cardNumber.substring(8, 12)}</span>
                                                <span class="card-method__digit-group">${order.card.cardNumber.substring(12, 16)}</span>
                                            </div>
                                            <div class="card-method__valid-thru" aria-label="Valid thru">Valid<br>thru</div>
                                            <div class="card-method__exp-date">
                                                <time datetime="${order.card.expiredDate}">
                                                        <fmt:parseDate value="${order.card.expiredDate}" pattern="yyyy-MM-dd" var="parsedDate" />
                                                        <fmt:formatDate value="${parsedDate}" pattern="MM/yy" var="formattedDate" />
                                                        ${formattedDate}
                                                </time>
                                            </div>
                                            <div class="card-method__name" aria-label="Dee Stroyer">${order.card.user.firstName} ${order.card.user.lastName}</div>
                                            <div class="card-method__name" aria-label="Dee Stroyer">${order.card.cardType}</div>
                                        </div>
                                        <div class="card-method__texture"></div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div>
                                        <p>Ví</p>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </c:when>
                        <c:otherwise>
                            <div class="slider">
                                <c:forEach var="card" items="${order.cart.user.cardMethods}" varStatus="status">
                                    <input type="radio" name="toggle" id="btn-${status.index+1}" <c:if test="${status.first}">checked</c:if>>
                                </c:forEach>
                                <div class="slider-controls">
                                    <c:forEach var="card" items="${order.cart.user.cardMethods}" varStatus="status">
                                        <label for="btn-${status.index+1}"></label>
                                    </c:forEach>
                                </div>
                                <ul class="slides">
                                    <c:forEach var="card" items="${order.cart.user.cardMethods}" varStatus="status">
                                        <li class="slide">
                                            <div class="card-method">
                                                <div class="card-method__info">
                                                    <div class="card-method__logo"></div>
                                                    <div class="card-method__chip">
                                                        <svg class="card-method__chip-lines" role="img" width="20px" height="20px" viewBox="0 0 100 100" aria-label="Chip">
                                                            <g opacity="0.8">
                                                                <polyline points="0,50 35,50" fill="none" stroke="#000" stroke-width="2" />
                                                                <polyline points="0,20 20,20 35,35" fill="none" stroke="#000" stroke-width="2" />
                                                                <polyline points="50,0 50,35" fill="none" stroke="#000" stroke-width="2" />
                                                                <polyline points="65,35 80,20 100,20" fill="none" stroke="#000" stroke-width="2" />
                                                                <polyline points="100,50 65,50" fill="none" stroke="#000" stroke-width="2" />
                                                                <polyline points="35,35 65,35 65,65 35,65 35,35" fill="none" stroke="#000" stroke-width="2" />
                                                                <polyline points="0,80 20,80 35,65" fill="none" stroke="#000" stroke-width="2" />
                                                                <polyline points="50,100 50,65" fill="none" stroke="#000" stroke-width="2" />
                                                                <polyline points="65,65 80,80 100,80" fill="none" stroke="#000" stroke-width="2" />
                                                            </g>
                                                        </svg>
                                                        <div class="card-method__chip-texture"></div>
                                                    </div>
                                                    <div class="card-method__type">debit</div>
                                                    <div class="card-method__number">
                                                        <span class="card-method__digit-group">${card.cardNumber.substring(0, 4)}</span>
                                                        <span class="card-method__digit-group">${card.cardNumber.substring(4, 8)}</span>
                                                        <span class="card-method__digit-group">${card.cardNumber.substring(8, 12)}</span>
                                                        <span class="card-method__digit-group">${card.cardNumber.substring(12, 16)}</span>
                                                    </div>
                                                    <div class="card-method__valid-thru" aria-label="Valid thru">Valid<br>thru</div>
                                                    <div class="card-method__exp-date">
                                                        <time datetime="${card.expiredDate}">
                                                                <fmt:parseDate value="${card.expiredDate}" pattern="yyyy-MM-dd" var="parsedDate" />
                                                                <fmt:formatDate value="${parsedDate}" pattern="MM/yy" var="formattedDate" />
                                                                ${formattedDate}
                                                        </time>
                                                    </div>
                                                    <div class="card-method__name" aria-label="Dee Stroyer">${card.user.firstName} ${card.user.lastName}</div>
                                                    <div class="card-method__name" aria-label="Dee Stroyer">${card.cardType}</div>
                                                </div>
                                                <div class="card-method__texture"></div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <form action="order" method="post">
                                <button type="submit" class="button" role="button">
                                    <input type="hidden" name="action" value="addPaymentMethod">
                                    <span>Thêm phương thức thanh toán</span>
                                </button><br><br>
                            </form>
                            
                        </c:otherwise>
                    </c:choose>
                </div>
                <hr>                   
                <div class="payments">
                    <span>THANH TOÁN</span>
                    <div class="details">
                        <span>Thành tiền:</span>
                        <span name="price" value="${order.totalAmount}">${order.totalAmount} VNĐ</span>
                        <span>Thuế:</span>
                        <span name="tax" value="${order.tax}">${order.tax} VNĐ</span>
                    </div>
                </div>
            </div>                 
        </div>  
        <div class="card checkout">
             <div class="footer">
                <label class="price">${order.tax + order.totalAmount} VNĐ</label>
                <c:choose>
                    <c:when test="${order.status == false}">
                        <form action="order" method="post">
                            <button type="submit" class="button" role="button" style="background-color: #467b74; color: #000000;">
                                <input type="hidden" name="action" value="checkout">
                                <span>Checkout</span>
                            </button>
                        </form>
                    </c:when>
                </c:choose>
            </div>
        </div>
    </div>
    </body>
</html>

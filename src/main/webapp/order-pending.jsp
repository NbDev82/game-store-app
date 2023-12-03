<%-- 
    Document   : order-pending
    Created on : Dec 2, 2023, 7:09:24 PM
    Author     : Van Hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Management Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
        <link rel ="stylesheet" href="assets/css/order-pending.css" type = "text/css"/>
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
        <%@ include file="header.jsp"%>
        <div class="responsive_page_frame with_header">
            <div class="tag">
                <h1>Order Management</h1>
            </div>
            <div class= "container-select">
                <form id="formSelect" method="post" action="admin" class="select">
                    <input id="selected" type="hidden" name="filter">
                    <select id="filterSelect" onchange="submitForm()">
                        <option value="All" <c:if test="${filter eq 'All'}">selected</c:if> >All</option>
                        <option value="Success" <c:if test="${filter eq 'Success'}">selected</c:if>>Success</option>
                        <option value="Pending" <c:if test="${filter eq 'Pending'}">selected</c:if>>Pending</option>
                    </select>
                    <input type="hidden" name="action" value="showOrder">
                    <input type="submit" value="Submit">
                </form>
            </div> 
            <div class="responsive_page_content">
                <div class="container mt-5">
                    <div class="d-flex justify-content-center row">
                        <div class="col-md-10">
                            <div class="rounded">
                                <div class="table-responsive table-borderless">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="text-center">

                                                </th>
                                                <th>Order #</th>
                                                <th>Security Code</th>
                                                <th>Status</th>
                                                <th>Total</th>
                                                <th>Created</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody class="table-body">
                                            <c:forEach items="${orders}" var="order">
                                                <tr class="cell-1">
                                                    <td>
                                                        <form class="buttons-container">
                                                            <a href="order?action=getOrder&securityCode=${order.securityCode}&role=admin" class="button-arounder">Detail</a>
                                                        </form>
                                                    </td>
                                                    <td>#${order.orderId}</td>
                                                    <td>${order.securityCode}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${order.status}">
                                                                <span class="badge badge-success">
                                                                   Success
                                                                </span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="badge badge-pending">
                                                                   Pending
                                                                </span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td>${order.totalAmount} VNĐ</td>
                                                    <td>${order.created}</td>
                                                    <td><i class="fa fa-ellipsis-h text-black-50"></i></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="assets/js/order-pending.js"></script>
    </body>

</html>

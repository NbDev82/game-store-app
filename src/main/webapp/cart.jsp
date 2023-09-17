<%-- 
    Document   : cart
    Created on : Aug 30, 2023, 10:30:25 PM
    Author     : Van Hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="utf-8">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel ="stylesheet" href="css/cart.css" type = "text/css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
    <%--<%@ include file="navbar.jsp"%>--%>

    <div class="container">
        <form class="cart" action="payment""
            style="margin-bottom: 30px">
            <div>
                <br/> <h1>YOUR SHOPPING CART</h1>
                    <div class="card card-product">
                        <div class="product-image">
                            <i class="IconPlanSmall" style="justify-content: center; align-items: center; display: inline-flex"></i>
                        </div>
                        <div class="product-title" >CSGO</div>
                        <div class="product-content" style="">Shot</div>
                        <div class="product-initial-price">15$</div>
                        <div class="product-discount-price">/$10</div>
                        <div class="product-details" >
                            <p>Product Description: This is a sample product description.</p>
                            <p>Product Rating: 4.5 stars</p>
                        </div>
                        <div style="left: 90%; bottom: 30%; position: absolute; ">
                            <a class="btn btn-danger" href="remove-from-cart?id=<%= 5%>">
                                <span class="glyphicon glyphicon-trash"></span>remove</a>
                        </div>
                    </div>
                
                <div class="card card-product">
                    <div class="product-image">
                        <i class="IconPlanSmall" style="justify-content: center; align-items: center; display: inline-flex"></i>
                    </div>
                    <div class="product-title" >CSGO</div>
                    <div class="product-content" style="">Shot</div>
                    <div class="product-initial-price">15$</div>
                    <div class="product-discount-price">/$10</div>
                    <div class="product-details">
                        <p>Product Description: This is a sample product description.</p>
                        <p>Product Rating: 4.5 stars</p>
                    </div>
                    <div style="left: 90%; bottom: 30%; position: absolute; ">
                        <a class="btn btn-danger" href="remove-from-cart?id=<%= 3%>">
                            <span class="glyphicon glyphicon-trash"></span>remove</a>
                    </div>
                </div>
                <div class="card card-product">
                    <div class="product-image">
                        <i class="IconPlanSmall" style="justify-content: center; align-items: center; display: inline-flex"></i>
                    </div>
                    <div class="product-title" >CSGO</div>
                    <div class="product-content" style="">Shot</div>
                    <div class="product-initial-price">15$</div>
                    <div class="product-discount-price">/$10</div>
                    <div class="product-details">
                        <p>Product Description: This is a sample product description.</p>
                        <p>Product Rating: 4.5 stars</p>
                    </div>
                    <div style="left: 90%; bottom: 30%; position: absolute; ">
                        <a class="btn btn-danger" href="remove-from-cart?id=<%= 4%>">
                            <span class="glyphicon glyphicon-trash"></span>remove</a>
                    </div>
                </div>
            </div>
            <div style="display:block; position: relative; ">
                <h4 style="display:inline-block;">Estimated total:</h4> 
                <h4 class="product-initial-price" style="display:inline-block; text-decoration: line-through;">$45</h4>
                <h4 class="product-discount-price" style="display:inline-block;">/$30</h4>
            </div>
            <div>
                <a class="btn btn-purchase pull-left" onclick="clearCart()"
                   style="margin-top: 15px; margin-left: 20px"> <span onclick="clearCart()">Clear Cart</span>
                </a>
            </div>
            <div>
                <c:url value="/order/${cartId}" var="url1"></c:url>
                <a href="${url1}" class="btn btn-purchase pull-left"
                   style="margin-top: 15px; margin-left: 20px"> <span class="btn btn-purchase">Purchase </span>
                </a>
            </div>
        </form>   
        <div>
            <c:url value="/game-store" var="url"></c:url>
            <a href="/game-store" class="btn btn-back" style="margin-left: 20px">Continue Shopping</a>
        </div>
    </div>
     
    <script src="js/cart.js"/>
    <%--<%@ include file="footer.jsp"%>--%>
</body>
</html>

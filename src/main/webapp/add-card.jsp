<%-- 
    Document   : checkout
    Created on : Nov 3, 2023, 12:26:56 AM
    Author     : Van Hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <body id="transparentBG" style="background-color: #1b2838; 
                                                background-image: url(assets/img/games.jpg); 
                                                background-repeat: no-repeat;">
        <form id="submitForm" action="card" method="post" id="addCardForm" style="width: 40%; margin-top: 5%;" class="container fade-in">
            <div class="container" style="text-align: center;">
                <img src="https://store.cloudflare.steamstatic.com/public/shared/images/header/logo_steam.svg?t=962016">
            </div>
            <c:if test="${message != null}">
                <div class="alert alert-danger">
                    <strong>Error: </strong> <h2 name="message">${message}</h2>
                </div>
            </c:if>
            <div class="container smallFont">
                <label ><b>Recipient Username</b></label>
                <input style="background-color: #e8f0fe;" type="text" name="username" placeholder="Enter Recipient Username" required>
                <label><b>Confirm Your Password</b></label>
                <input style="background-color:#e8f0fe;" type="password" name="password" placeholder="Enter Password" required>
                <br> <br>
                <label ><b>CREDIT CARD INFO</b></label>
                <br>    <br>
                <label ><b>Typed card </b></label>
                <select style="background-color: #e8f0fe;" name="cardType" id="cardType" required>
                    <option value ="VISA">VISA</option>
                    <option value ="MASTER_CARD">MASTER_CARD</option>
                    <option value ="VTC">VTC</option>
                    <option value ="CREDIT_CARD">CREDIT_CARD</option>
                    <option value ="BANKING">BANKING</option>
                </select><br>
                <!--<input style="background-color: #e8f0fe;" type="text" name="cardType" placeholder="Enter Card holder name" required>-->
                <label ><b>Card Number</b></label>
                <input style="background-color: #e8f0fe;" type="text" id="cardNumber" name="cardNumber" placeholder="1234-4567-8910-1234" maxlength="16" oninput="validateNumberInput(this)" required>                    
                <p id="errorMessage" style="color: red; display: none;">Please enter a valid 16-digit card number.</p>
                <label ><b>Security number CCV:</b></label>
                <input style="background-color: #e8f0fe;" type="text" name="securityCode" placeholder="CCV/CVV" required>
                <h2>Is verified?</h2>
                <div class="wrapper">
                    <input type="radio" name="select" id="option-1" checked>
                    <input type="radio" name="select" id="option-2">
                    <label for="option-1" class="option option-1">
                      <div class="dot"></div>
                       <span>Yes</span>
                       </label>
                    <label for="option-2" class="option option-2">
                      <div class="dot"></div>
                       <span>No</span>
                    </label>
               </div>            
                <button id="submitButton" class="smallFont" style="display: block;width: 25%; margin-left: 37%; margin-top:2%;height: 50px ;background-image: linear-gradient(to right, #3786c6 , #223e87);"
                        onclick="validateForm()">
                    <input type="hidden" name="action" value="addCard">
                    <span style="color: whitesmoke; font-weight: 600;">Add</span>
                </button>
                <button type="submit" style="width: 25%; margin-left: 37%; margin-top:2%;height: 50px; background-image: linear-gradient(to right, #df1b1b, #ba3030);" 
                    class="cancelbtn smallFont">
                    <input type="hidden" name="action" value="home">
                    <span style="color: whitesmoke; font-weight: 600;">Back</span>
                </button>
            </div>
            <div class="container">
            </div>
        </form>
    </body>
</html>

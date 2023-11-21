<%-- 
    Document   : signIn
    Created on : Nov 2, 2023, 4:43:52 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="css/global.css" />
    <link rel="stylesheet" href="css/signin.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,400&display=swap"
    />
  </head>
  <body>
    <div class="responsiveloginview">
      <div class="frame">
        <img
          class="backgroundpic-1-icon"
          alt=""
          src="./public/game-bg-grey-cover.png"
        />

        <div class="main-header">
          <div class="content-wrapper">
            <div class="content">
              <img class="logo-icon" alt="" src="./public/logo.svg" />

              <div class="nav-menu">
                <div class="button">
                  <div class="sub-menu">STORE</div>
                </div>
                <div class="button1">
                  <div class="sub-menu">COMMUNITY</div>
                </div>
                <div class="button2">
                  <div class="sub-menu">YOUR ACCOUNT</div>
                </div>
                <div class="button3">
                  <div class="sub-menu">CHAT</div>
                </div>
                <div class="button4">
                  <div class="sub-menu">SUPPORT</div>
                </div>
              </div>
              <div class="global-action-menu">
                <img
                  class="notification-button-icon"
                  alt=""
                  src="./public/notification-button.svg"
                />

                <div class="icon-button">
                  <img
                    class="clarityinstall-line-icon"
                    alt=""
                    src="./public/clarityinstallline.svg"
                  />

                  <div class="install-app">Install app</div>
                </div>
                <div class="value">
                  <div class="sub-menu">0đ</div>
                </div>
                <div class="user-name-link">
                  <div class="anhkhoamark">anhkhoamark</div>
                  <img
                    class="raphaelarrowdown-icon"
                    alt=""
                    src="./public/raphaelarrowdown.svg"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="login1">
          <div class="logincontainer1">   
              <form class="create_new_account" action="createAcc" method="get">
                  <c:choose>
                    <c:when test="${inValidEmail or inValidNumber or notCheck}">
                        <div id="error_display" style="background-image: none; background-color: rgba(0, 0, 0, 0.5);">
                            Please enter a valid email address.
                            <br>
                            Please fill in the Confirm email address field.
                            <br>
                            And find more errors highlighted below.
                            <br>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div>&nbsp;</div>
                    </c:otherwise>
                </c:choose>
                  <input type="hidden" name="action" value="continue">        
                  <div id="account_form_box">
                    <div class="join_form">
                        <div class="sign_in_title">Create new account</div>
                        <div class="form_row form_row_flex">
                            <div class="form_row_content">
                                <label for="email">Your email</label>
                                <c:choose>
                                    <c:when test="${inValidEmail}">
                                        <input type="email" maxlength="255" 
                                               name="email" value="${email}" class="inValid">
                                    </c:when>
                                    <c:otherwise>
                                        <input type="email" maxlength="255" 
                                               name="email" value="${email}">
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                        <div class="form_row form_row_flex">
                            <div class="form_row_content">
                                <label for="email">Confirm your email</label>
                                <c:choose>
                                    <c:when test="${inValidEmail}">
                                        <input type="email" maxlength="255" 
                                               name="confirmMail" value="${confirmMail}" class="inValid">
                                    </c:when>
                                    <c:otherwise>
                                        <input type="email" maxlength="255" 
                                               name="confirmMail" value="${confirmMail}">
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div> 
                        <div class="form_row form_row_flex">
                            <div class="form_row_content">
                                <label for="email">Your number</label>
                                <c:choose>
                                    <c:when test="${inValidNumber}">
                                        <input type="text" maxlength="255" 
                                               name="phoneNumber" value="${phoneNumber}" class="inValid">
                                    </c:when>
                                    <c:otherwise>
                                        <input type="text" maxlength="255" 
                                               name="phoneNumber" value="${phoneNumber}">
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>                        
                        <div class="form_row">
                            <div class="agree_policy">
                              <input type="hidden" name="action" value="submit_agree">
                              <div class="agp_box">
                                <label id="label_agree">
                                  <%
                                    Boolean isAgreed = (Boolean) session.getAttribute("isAgreed");
                                    boolean isChecked = Boolean.TRUE.equals(isAgreed);
                                  %>
                                  <c:choose>
                                      <c:when test="${notCheck}">
                                          <input type="checkbox" name="agreeCheck" class="inValid" <%= isChecked ? "checked" : "" %>>
                                      </c:when>
                                      <c:otherwise>
                                          <input type="checkbox" name="agreeCheck" <%= isChecked ? "checked" : "" %>>
                                      </c:otherwise>
                                  </c:choose>
                                  I am 13 years of age or older and agree to the terms of the <a href="*" target="_blank">Game store agreement</a> and the <a href="*" target="_blank">Community policy</a>.
                                </label>
                              </div>
                            </div>
                                  
                            <div class="formerror1"><i>${messageContinueError}</i></div>
                            
                            <div class="verified_email">
                                <button class="submitbutton continue_button" type="submit">
                                    <span>Continue</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
              </form>
          </div>
        </div>

      </div>
      <div class="footer">
        <div class="this-is-the-footer-wrapper">
          <div class="this-is-the">This is the footer</div>
        </div>
      </div>
    </div>
  </body>
</html>


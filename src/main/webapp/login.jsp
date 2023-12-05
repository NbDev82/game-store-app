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
        <link
          rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
        />
        <link
          rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,400&display=swap"
        />
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

            <link rel="stylesheet" href="css/profile-page.css" />
            <link rel="stylesheet" href="css/global.css" />
            <link rel="stylesheet" href="css/login.css" />

    </head>  
    <body class="v6 infinite_scrolling responsive_page DefaultTheme ">
        <div class="responsive_page_frame with_header">
            <%@ include file="header.jsp"%>

            <div class="frame">
                <div class="login1">
                  <div class="logincontainer1">
                    <div class="login2">
                      <div style="display: flex; flex-direction: column; gap: 8px; margin: 8px 16px;">
                        <div class="PrimaryHeader">Sign in</div>
                      </div>
                      <div class="loginformcontainer1">
                        <div class="loginDialog_SideBySide">
                          <form class="loginform" action="logAcc" method="post">
                            <input type="hidden" name="action" value="login">        
                            <div class="logintextfield2">
                              <div class="logintextfieldlabel2">
                                SIGN IN WITH ACCOUNT NAME
                              </div>
                              <div style="height: 17.6px; display: block;"></div>
                              <input type="text" class="logintextfieldinput2" name="userName" value="${acc.userName}">
                            </div>
                            <div class="logintextfield3">
                              <div class="logintextfieldlabel2">
                                <div class="sign-in-with2">PASSWORD</div>
                              </div>
                              <div style="height: 17.6px; display: block;"></div>
                              <input type="password" class="logintextfieldinput2" name="passwordHash" value="${passwordHash}">
                            </div>
                            <div class="loginrememberme1">
                              <div class="CheckBoxField">
                                <input type="checkbox" name="agree_check">
                                <div class="remember_text">Remember me</div>
                              </div>
                            </div>
                            <div class="signinbuttoncontainer2">
                              <button class="submitbutton" type="submit">
                                Sign in
                              </button>
                            </div>
                            <div class="formerror1"><i>${message}</i></div>
                            <a href="forgot-password.jsp" class="textLink">
                              Help, I can't sign in
                            </a>
                          </form>
                          <div class="anotherloginmetho1">
                            <div class="anotherLoginMethodContainer">
                              <div class="highlighttext3">
                                <div class="third-party-apps1">THIRD-PARTY APPS</div>
                              </div>
                              <div class="third-party-app2">
                                <img
                                  class="devicongoogle2"
                                  alt=""
                                  src="./public/devicongoogle1.svg"
                                />

                                <img
                                  class="rifacebook-fill-icon2"
                                  alt=""
                                  src="./public/rifacebookfill1.svg"
                                />

                                <div class="sign-in-with2">Facebook</div>
                              </div>
                              <div class="third-party-app2">
                                <img
                                  class="rifacebook-fill-icon2"
                                  alt=""
                                  src="./public/devicongoogle2.svg"
                                />

                                <img
                                  class="devicongoogle2"
                                  alt=""
                                  src="./public/rifacebookfill1.svg"
                                />

                                <div class="sign-in-with2">Google</div>
                              </div>
                              <div class="highlighttext4">
                                <div class="or-using-qr1">OR USING QR CODE</div>
                              </div>
                              <img
                                class="image-7-icon1"
                                alt=""
                                src="./public/image-71@2x.png"
                              />
                              <div class="highlighttext5">
                                <div class="use-the-mobile-container1">
                                  <p class="use-the-mobile-app-to1">
                                    Use the <span class="mobile-app1">mobile app</span> to
                                  </p>
                                  <p class="use-the-mobile-app-to1">sign in via QR</p>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <form class="loginbottomrow1" action="logAcc" method="get">
                    <input type="hidden" name="action" value="createAcc"/>
                  <div class="newaccount1">
                    <div class="headline1">New to GameStore?
                    </div>
                    <div class="blue_button">
                      <button type="submit" class="submitbutton3">
                        Create an account
                      </button>
                    </div>
                  </div>
                  <div class="subtext2">
                    <div class="subtext3">
                      <div class="its-free-and1">
                        It's free and easy. Discover thousands of games to play with
                        millions of new friends.
                      </div>
                      <a href="*" class="loginaboutlink1">
                        Learn more about Game Store
                      </a>
                    </div>
                  </div>
                </form>
              </div>
                <%@ include file="footer.jsp"%>

        </div>
    </body>
</html>


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
            <link rel="stylesheet" href="css/edit-profile.css" />

    </head>  
    <body class="v6 infinite_scrolling responsive_page flat_page profile_edit_page ">
        <div class="responsive_page_frame with_header">
            <div class="responsive_page_content">
                <%@ include file="header.jsp"%>
                <div class="responsive_page_template_content">
                    <div class="pagecontent">
                        <div class="grouppage_content_area">
                            <div class="maincontent">
                                <div class="leftcol hasContentBoxes">
                                    <div class="react_root">
                                        <div class="profile_BackToProfile">
                                            <a href="view-profile.jsp">Back to Your profile</a>
                                        </div>
                                        <div class="profile_edit">
                                            <div class="profile_edit_navigation">
                                                <div class="profile_edit_navigation_btn">General</div>
                                            </div>
                                            <div class="profile_edit_pagecontent">
                                                <form action="profiles" method="post">
                                                    <input type="hidden" name="action" value="editProfile">
                                                    <div class="HeaderText">About</div>
                                                    <div class="BodyText">
                                                        Set your username and also your real name here to make your friend easier to find you in our GameStore
                                                    </div>
                                                    <div class="profile_edit_profilebox">
                                                        <div class="profile_edit_profilebox_title">General</div>
                                                        <div class="profile_edit_profilebox_content">
                                                            <div class="InputAreaBox">
                                                                <label>
                                                                    <div class="profile_edit_InputLabel">Display Name</div>
                                                                    <div class="profile_edit_InputWrapper">
                                                                        <input type="text" name="userName" value="${acc.userName}" class="profile_edit_Input" tabindex="0">
                                                                    </div>
                                                                </label>
                                                            </div>
                                                            <div class="InputAreaBox">
                                                                <label>
                                                                    <div class="profile_edit_InputLabel">First Name</div>
                                                                    <div class="profile_edit_InputWrapper">
                                                                        <input type="text" name="firstName" value="${user.firstName}" class="profile_edit_Input" tabindex="1">
                                                                    </div>
                                                                </label>
                                                            </div>
                                                            <div class="InputAreaBox">
                                                                <label>
                                                                    <div class="profile_edit_InputLabel">Last Name</div>
                                                                    <div class="profile_edit_InputWrapper">
                                                                        <input type="text" name="lastName" value="${user.lastName}" class="profile_edit_Input" tabindex="2">
                                                                    </div>
                                                                </label>
                                                            </div>
                                                            <div class="InputAreaBox">
                                                                <label>
                                                                    <div class="profile_edit_InputLabel">Email</div>
                                                                    <div class="profile_edit_InputWrapper">
                                                                        <input type="email" name="email" value="${acc.email}" class="profile_edit_Input" tabindex="3">
                                                                    </div>
                                                                </label>
                                                            </div>
                                                            <div class="InputAreaBox">
                                                                <label>
                                                                    <div class="profile_edit_InputLabel">Phone number</div>
                                                                    <div class="profile_edit_InputWrapper">
                                                                        <input type="text" name="phoneNumber" value="${user.phoneNumber}" class="profile_edit_Input" tabindex="4">
                                                                    </div>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="profile_edit_profilebox">
                                                        <div class="profile_edit_profilebox_title">Summary</div>
                                                        <div class="profile_edit_profilebox_content">
                                                            <textarea name="summary" rows="3" cols="40" class="summary_textarea" 
                                                                      style="overflow: hidden; resize: none; height: 40px;">${user.summary}</textarea>
                                                        </div>
                                                    </div>
                                                        
                                                    <div class="profile_edit_savebtn">
                                                        <button type="submit" class="blue_save_btn">
                                                            Save
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                            
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%@ include file="footer.jsp"%>
            </div>
        </div>
    </body>
</html>


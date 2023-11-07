<%-- 
    Document   : footer
    Created on : Nov 3, 2023, 6:44:21 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View Product</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="theme-color" content="#171a21">
<!--        Game Name-->
        <title>Header Game Store</title>
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">



        <link href="https://store.akamai.steamstatic.com/public/shared/css/motiva_sans.css?v=Rc2hpzg2Ex3T&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/shared/css/shared_global.css?v=MIg0pk6GiDqL&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/shared/css/buttons.css?v=6PFqex5UPprb&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/css/v6/store.css?v=LerCYuw4ijru&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/shared/css/user_reviews.css?v=bytTZBM7bzWv&amp;l=english"
              rel="stylesheet" type="text/css">
        <link
            href="https://store.akamai.steamstatic.com/public/shared/css/store_game_shared.css?v=-AlRjEWwrLFx&amp;l=english"
            rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/css/v6/game.css?v=sEPN7RCTrDPa&amp;l=english"
              rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/css/v6/recommended.css?v=2DUqKOxEMbPk&amp;l=english"
              rel="stylesheet" type="text/css">
        <link
            href="https://store.akamai.steamstatic.com/public/css/v6/user_reviews_rewards.css?v=5-HJZa1v4wFP&amp;l=english"
            rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/shared/css/apphub.css?v=50EOEVc1LdIK&amp;l=english"
              rel="stylesheet" type="text/css">
        <link
            href="https://store.akamai.steamstatic.com/public/shared/css/ui-lightness/jquery-ui-1.7.2.custom.css?v=.23LkAmA0IgZV"
            rel="stylesheet" type="text/css">
        <link href="https://store.akamai.steamstatic.com/public/css/v6/game_mob.css?v=Ay6xQlwsrr-t&amp;l=english"
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
        src="https://store.akamai.steamstatic.com/public/javascript/gamehighlightplayer.js?v=kABVeCUZi3wc&amp;l=english"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/user_reviews.js?v=9MIJkribTt7s&amp;l=english"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/dselect.js?v=sjouo3-33Gox&amp;l=english"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/javascript/app_tagging.js?v=6IZEZDvamWj9&amp;l=english"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/javascript/game.js?v=L8ZY2nPyxP_4&amp;l=english"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/flot-0.8/jquery.flot.min.js?v=.-m414tR-pxn_"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/flot-0.8/jquery.flot.resize.min.js?v=.4PeWDSmdkiqV"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/flot-0.8/jquery.flot.time.min.js?v=.tcjKevZLo5Un"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/flot-0.8/jquery.flot.selection.min.js?v=._7pxnS3SCqO7"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/jquery-ui-1.9.2.js?v=.4YjdpcHj68MM"></script>
        <script type="text/javascript"
        src="https://store.akamai.steamstatic.com/public/shared/javascript/shared_responsive_adapter.js?v=pSvIAKtunfWg&amp;l=english"></script>
        <meta name="twitter:card" content="summary_large_image">
        <meta name="Description"
              content="Stream Games is a set of mini games that Twitch Streamers can play with their viewers' interaction">
        <meta name="twitter:site" content="@steam" />
        <meta property="og:title" content="Stream Games on Steam">
        <meta property="twitter:title" content="Stream Games on Steam">
        <meta property="og:type" content="website">
        <meta property="fb:app_id" content="105386699540688">
        <meta property="og:site" content="Steam">
        <meta property="og:url" content="https://store.steampowered.com/app/872990/Stream_Games/">
        <meta property="og:description"
              content="Stream Games is a set of mini games that Twitch Streamers can play with their viewers' interaction">
        <meta property="twitter:description"
              content="Stream Games is a set of mini games that Twitch Streamers can play with their viewers' interaction">
        <link rel="canonical" href="https://store.steampowered.com/app/872990/Stream_Games/">
        <link rel="image_src" href="https://cdn.akamai.steamstatic.com/steam/apps/872990/capsule_616x353.jpg?t=1597940503">
        <meta property="og:image"
              content="https://cdn.akamai.steamstatic.com/steam/apps/872990/capsule_616x353.jpg?t=1597940503">
        <meta name="twitter:image"
              content="https://cdn.akamai.steamstatic.com/steam/apps/872990/capsule_616x353.jpg?t=1597940503" />
        <link rel="stylesheet" href="assets/css/view_product.css">
        <link rel="stylesheet" href="assets/css/view_product_base.css">
    </head>
    <body class="v6 app game_bg application responsive_page ">
    <div id="footer_spacer" class="small_footer"></div>
    <div id="footer_spacer" class=""></div>
    <div id="footer" class="">
        <div class="footer_content">

            <div class="rule"></div>
            <div id="footer_logo_steam">
                <!-- logo game store img-->
                <img src="assets/img/gamestore.png"
                     alt="Valve Software" style="border: 0;" width="50px" height="30px" />
            </div>
            <!-- Value img -->
            <!-- come to page value -->
            <div id="footer_logo">
                <a href="#" target="_blank" rel="">
                    <img src="assets/img/footerLogo_Value.png"
                        alt="Valve Software" style="border: 0;" />
                </a>
            </div>
            <div id="footer_text" data-panel="{&quot;flow-children&quot;:&quot;row&quot;}">
                <div>&copy; 2023 Valve Corporation. All rights reserved. All trademarks are property of their
                    respective owners in the US and other countries.
                </div>
                <div>VAT included in all prices where applicable.&nbsp;&nbsp;
                    <!-- Privacy Policy -->
                    <a href="#" target="_blank"
                        rel="">Privacy Policy</a>
                    &nbsp; | &nbsp;
                    <a href="#" target="_blank" rel="">Legal</a>
                    &nbsp; | &nbsp;
                    <a href="#" target="_blank"
                        rel="">Steam Subscriber Agreement</a>
                    &nbsp; | &nbsp;
                    <a href="#" target="_blank"
                        rel="">Refunds</a>
                    &nbsp; | &nbsp;
                    <a href="#" target="_blank"
                        rel="">Cookies</a>

                </div>
                <!-- onclick view mobile website -->
                <div class="responsive_optin_link">
                    <div class="btn_medium btnv6_grey_black" 
                    onclick="Responsive_RequestMobileView()">
                        <span>View mobile website</span>
                    </div>
                </div>

            </div>



            <div style="clear: left;"></div>
            <br>

            <div class="rule"></div>

            <div class="valve_links" data-panel="{&quot;flow-children&quot;:&quot;row&quot;}">
                <a href="#" target="_blank" rel="">About Valve</a>
                &nbsp; | &nbsp;<a href="#" target="_blank" rel="">Jobs</a>
                &nbsp; | &nbsp;<a href="#" target="_blank" rel="">GameStoreworks</a>
                &nbsp; | &nbsp;<a href="#" target="_blank" rel="">GameStore
                    Distribution</a>
                &nbsp; | &nbsp;<a href="#">Support</a>
                &nbsp; | &nbsp;<a href="#" target="_blank"
                    rel="">Gift Cards</a>
                &nbsp; | &nbsp;<a href="#"
                    target="_blank" rel=" noopener">
                    <!-- face book game store -->
                    <img
                        src="assets/icons/ico_facebook.gif"> GameStore</a>
                &nbsp; | &nbsp;<a href="#" target="_blank" rel="">
                    <!-- X game store -->
                    <img
                        src="assets/icons/ico_twitter.gif"> @GameStore</a>
            </div>

        </div>
    </div>
</body>
</html>

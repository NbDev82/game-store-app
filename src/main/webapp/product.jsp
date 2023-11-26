<%-- 
    Document   : view_product
    Created on : Oct 13, 2023, 9:42:19 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View Product</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="theme-color" content="#171a21">
        <title>Stream Games on Steam</title>
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
        <div class="responsive_page_frame with_header">
            <!-- Hidden header -->
            <div class="responsive_page_menu_ctn mainmenu">
                <div class="responsive_page_menu" id="responsive_page_menu">
                    <div class="mainmenu_contents">
                        <div class="mainmenu_contents_items">
                            <a class="menuitem"
                               href="https://store.steampowered.com/login/?redir=app%2F872990%2FStream_Games%2F&redir_ssl=1&snr=1_5_9__global-header">
                                Login </a>
                            <a class="menuitem supernav supernav_active"
                               href="https://store.steampowered.com/?snr=1_5_9__global-responsive-menu"
                               data-tooltip-type="selector" data-tooltip-content=".submenu_store">
                                Store </a>
                            <div class="submenu_store" style="display: none;" data-submenuid="store">
                                <a class="submenuitem"
                                   href="https://store.steampowered.com/?snr=1_5_9__global-responsive-menu">Home</a>
                                <a class="submenuitem"
                                   href="https://store.steampowered.com/explore/?snr=1_5_9__global-responsive-menu">Discovery
                                    Queue</a>
                                <a class="submenuitem" href="https://steamcommunity.com/my/wishlist/">Wishlist</a>
                                <a class="submenuitem"
                                   href="https://store.steampowered.com/points/shop/?snr=1_5_9__global-responsive-menu">Points
                                    Shop</a>
                                <a class="submenuitem"
                                   href="https://store.steampowered.com/news/?snr=1_5_9__global-responsive-menu">News</a>
                                <a class="submenuitem"
                                   href="https://store.steampowered.com/stats/?snr=1_5_9__global-responsive-menu">Stats</a>
                            </div>


                            <a class="menuitem supernav " style="display: block" href="https://steamcommunity.com/"
                               data-tooltip-type="selector" data-tooltip-content=".submenu_community">
                                Community </a>
                            <div class="submenu_community" style="display: none;" data-submenuid="community">
                                <a class="submenuitem" href="https://steamcommunity.com/">Home</a>
                                <a class="submenuitem" href="https://steamcommunity.com/discussions/">Discussions</a>
                                <a class="submenuitem" href="https://steamcommunity.com/workshop/">Workshop</a>
                                <a class="submenuitem" href="https://steamcommunity.com/market/">Market</a>
                                <a class="submenuitem"
                                   href="https://steamcommunity.com/?subsection=broadcasts">Broadcasts</a>
                            </div>




                            <a class="menuitem " href="https://help.steampowered.com/en/">
                                Support </a>

                            <div class="minor_menu_items">
                                <div class="menuitem change_language_action">
                                    Change language </div>
                                <div class="menuitem" onclick="Responsive_RequestDesktopView();">
                                    View desktop website </div>
                            </div>
                        </div>
                        <div class="mainmenu_footer_spacer  "></div>
                        <div class="mainmenu_footer">
                            <div class="mainmenu_footer_logo"><img
                                    src="https://store.akamai.steamstatic.com/public/shared/images/responsive/logo_valve_footer.png">
                            </div>
                            © Valve Corporation. All rights reserved. All trademarks are property of their respective owners
                            in the US and other countries. <span class="mainmenu_valve_links">
                                <a href="https://store.steampowered.com/privacy_agreement/?snr=1_5_9__global-responsive-menu"
                                   target="_blank">Privacy Policy</a>
                                &nbsp;| &nbsp;<a href="http://www.valvesoftware.com/legal.htm" target="_blank">Legal</a>
                                &nbsp;| &nbsp;<a
                                    href="https://store.steampowered.com/subscriber_agreement/?snr=1_5_9__global-responsive-menu"
                                    target="_blank">Steam Subscriber Agreement</a>
                                &nbsp;| &nbsp;<a
                                    href="https://store.steampowered.com/steam_refunds/?snr=1_5_9__global-responsive-menu"
                                    target="_blank">Refunds</a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="responsive_local_menu_tab"></div>
            <div class="responsive_page_menu_ctn localmenu">
                <div class="responsive_page_menu" id="responsive_page_local_menu"
                     data-panel="{&quot;onOptionsActionDescription&quot;:&quot;Filter&quot;,&quot;onOptionsButton&quot;:&quot;Responsive_ToggleLocalMenu()&quot;,&quot;onCancelButton&quot;:&quot;Responsive_ToggleLocalMenu()&quot;}">
                    <div class="localmenu_content"
                         data-panel="{&quot;maintainY&quot;:true,&quot;bFocusRingRoot&quot;:true,&quot;flow-children&quot;:&quot;column&quot;}">
                    </div>
                </div>
            </div>
            <div class="responsive_header">
                <div class="responsive_header_content">
                    <div id="responsive_menu_logo">
                        <img src="https://store.akamai.steamstatic.com/public/shared/images/responsive/header_menu_hamburger.png"
                             height="100%">
                    </div>
                    <div class="responsive_header_logo">
                        <a href="https://store.steampowered.com/?snr=1_5_9__global-responsive-menu">
                            <img src="https://store.akamai.steamstatic.com/public/shared/images/responsive/header_logo.png"
                                 height="36" style="border: 0;" alt="STEAM">
                        </a>
                    </div>
                </div>
            </div>
            <div class="responsive_page_content_overlay"> </div>
            <div class="responsive_fixonscroll_ctn nonresponsive_hidden "></div>
            <!-- //  Content // -->
            <div class="responsive_page_content">
                <!-- header -->
                <%@include  file="header.jsp" %>
                <!-- Outer Container -->
                <!-- other -->
                <div id="responsive_store_nav_ctn"></div>
                <div id="responsive_store_nav_overlay" style="display:none">
                    <div id="responsive_store_nav_overlay_ctn"></div>
                    <div id="responsive_store_nav_overlay_bottom"></div>
                </div>
                <div id="responsive_store_search_overlay" style="display:none"></div>
                <div data-cart-banner-spot="1"></div>
                <!-- other -->
                <!-- Container -->
                <div class="responsive_page_template_content" id="responsive_page_template_content"
                     data-panel="{&quot;autoFocus&quot;:true}">

                    <div id="application_config" style="display: none;"
                         data-config="{&quot;EUNIVERSE&quot;:1,&quot;WEB_UNIVERSE&quot;:&quot;public&quot;,&quot;LANGUAGE&quot;:&quot;english&quot;,&quot;COUNTRY&quot;:&quot;US&quot;,&quot;MEDIA_CDN_COMMUNITY_URL&quot;:&quot;https:\/\/cdn.akamai.steamstatic.com\/steamcommunity\/public\/&quot;,&quot;MEDIA_CDN_URL&quot;:&quot;https:\/\/cdn.akamai.steamstatic.com\/&quot;,&quot;COMMUNITY_CDN_URL&quot;:&quot;https:\/\/community.akamai.steamstatic.com\/&quot;,&quot;COMMUNITY_CDN_ASSET_URL&quot;:&quot;https:\/\/cdn.akamai.steamstatic.com\/steamcommunity\/public\/assets\/&quot;,&quot;STORE_CDN_URL&quot;:&quot;https:\/\/store.akamai.steamstatic.com\/&quot;,&quot;PUBLIC_SHARED_URL&quot;:&quot;https:\/\/store.akamai.steamstatic.com\/public\/shared\/&quot;,&quot;COMMUNITY_BASE_URL&quot;:&quot;https:\/\/steamcommunity.com\/&quot;,&quot;CHAT_BASE_URL&quot;:&quot;https:\/\/steamcommunity.com\/&quot;,&quot;STORE_BASE_URL&quot;:&quot;https:\/\/store.steampowered.com\/&quot;,&quot;STORE_CHECKOUT_BASE_URL&quot;:&quot;https:\/\/checkout.steampowered.com\/&quot;,&quot;IMG_URL&quot;:&quot;https:\/\/store.akamai.steamstatic.com\/public\/images\/&quot;,&quot;STEAMTV_BASE_URL&quot;:&quot;https:\/\/steam.tv\/&quot;,&quot;HELP_BASE_URL&quot;:&quot;https:\/\/help.steampowered.com\/&quot;,&quot;PARTNER_BASE_URL&quot;:&quot;https:\/\/partner.steamgames.com\/&quot;,&quot;STATS_BASE_URL&quot;:&quot;https:\/\/partner.steampowered.com\/&quot;,&quot;INTERNAL_STATS_BASE_URL&quot;:&quot;https:\/\/steamstats.valve.org\/&quot;,&quot;IN_CLIENT&quot;:false,&quot;USE_POPUPS&quot;:false,&quot;STORE_ICON_BASE_URL&quot;:&quot;https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/&quot;,&quot;WEBAPI_BASE_URL&quot;:&quot;https:\/\/api.steampowered.com\/&quot;,&quot;TOKEN_URL&quot;:&quot;https:\/\/store.steampowered.com\/\/chat\/clientjstoken&quot;,&quot;BUILD_TIMESTAMP&quot;:1697136380,&quot;PAGE_TIMESTAMP&quot;:1697287528,&quot;IN_TENFOOT&quot;:false,&quot;IN_GAMEPADUI&quot;:false,&quot;IN_CHROMEOS&quot;:false,&quot;IN_MOBILE_WEBVIEW&quot;:false,&quot;PLATFORM&quot;:&quot;windows&quot;,&quot;BASE_URL_STORE_CDN_ASSETS&quot;:&quot;https:\/\/cdn.akamai.steamstatic.com\/store\/&quot;,&quot;EREALM&quot;:1,&quot;LOGIN_BASE_URL&quot;:&quot;https:\/\/login.steampowered.com\/&quot;,&quot;AVATAR_BASE_URL&quot;:&quot;https:\/\/avatars.akamai.steamstatic.com\/&quot;,&quot;FROM_WEB&quot;:true,&quot;WEBSITE_ID&quot;:&quot;Store&quot;,&quot;BASE_URL_SHARED_CDN&quot;:&quot;https:\/\/shared.akamai.steamstatic.com\/&quot;,&quot;CLAN_CDN_ASSET_URL&quot;:&quot;https:\/\/clan.akamai.steamstatic.com\/&quot;,&quot;SNR&quot;:&quot;1_5_9_&quot;}"
                         data-userinfo="{&quot;logged_in&quot;:false,&quot;country_code&quot;:&quot;US&quot;}"
                         data-broadcastuser="{&quot;success&quot;:1,&quot;bHideStoreBroadcast&quot;:false}"
                         data-store_user_config="{&quot;webapi_token&quot;:&quot;&quot;,&quot;shoppingcart&quot;:null}">
                    </div>
                    <div id="application_root"></div>
                    <link
                        href="https://store.akamai.steamstatic.com/public/css/applications/store/main.css?v=7kYddaH6WaIX&amp;l=english"
                        rel="stylesheet" type="text/css">
                    <script type="text/javascript"
                    src="https://store.akamai.steamstatic.com/public/javascript/applications/store/manifest.js?v=IHXpLXQn_BnB&amp;l=english"></script>
                    <script type="text/javascript"
                    src="https://store.akamai.steamstatic.com/public/javascript/applications/store/libraries~b28b7af69.js?v=tf9iE4Nq3D1i&amp;l=english"></script>
                    <script type="text/javascript"
                    src="https://store.akamai.steamstatic.com/public/javascript/applications/store/main.js?v=zU91uJ5gbxYs&amp;l=english"></script>
                    <!-- Script for container -->
                    <script type="text/javascript">

                                                var g_eDiscoveryQueueType = 0;

                                                GStoreItemData.AddStoreItemDataSet(
                                                        {"rgApps": {"1260320": {"name": "Party Animals", "url_name": "Party_Animals", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1999\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$19.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1260320\/capsule_184x69.jpg?t=1697003851", "os_windows": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "1868140": {"name": "DAVE THE DIVER", "url_name": "DAVE_THE_DIVER", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1999\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$19.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1868140\/capsule_184x69.jpg?t=1692149536", "os_windows": true, "os_macos": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "413150": {"name": "Stardew Valley", "url_name": "Stardew_Valley", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1499\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$14.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/413150\/capsule_184x69.jpg?t=1666917466", "os_windows": true, "os_macos": true, "os_linux": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "960090": {"name": "Bloons TD 6", "url_name": "Bloons_TD_6", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1399\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$13.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/960090\/capsule_184x69.jpg?t=1696882681", "os_windows": true, "os_macos": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "613100": {"name": "House Flipper", "url_name": "House_Flipper", "discount_block": "<div class=\"discount_block \" data-price-final=\"249\" data-bundlediscount=\"0\" data-discount=\"90\"><div class=\"discount_pct\">-90%<\/div><div class=\"discount_prices\"><div class=\"discount_original_price\">$24.99<\/div><div class=\"discount_final_price\">$2.49<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/613100\/capsule_184x69.jpg?t=1690812074", "os_windows": true, "os_macos": true, "has_live_broadcast": false, "discount": true, "localized": true, "localized_english": true}, "291550": {"name": "Brawlhalla", "url_name": "Brawlhalla", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"0\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">Free to Play<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/291550\/capsule_184x69.jpg?t=1697040616", "os_windows": true, "os_macos": true, "has_live_broadcast": true, "localized": true, "localized_english": true}, "1794680": {"name": "Vampire Survivors", "url_name": "Vampire_Survivors", "discount_block": "<div class=\"discount_block \" data-price-final=\"349\" data-bundlediscount=\"0\" data-discount=\"30\"><div class=\"discount_pct\">-30%<\/div><div class=\"discount_prices\"><div class=\"discount_original_price\">$4.99<\/div><div class=\"discount_final_price\">$3.49<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1794680\/capsule_184x69.jpg?t=1695309084", "os_windows": true, "os_macos": true, "has_live_broadcast": false, "discount": true, "localized": true, "localized_english": true}, "1290000": {"name": "PowerWash Simulator", "url_name": "PowerWash_Simulator", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"2499\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$24.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1290000\/capsule_184x69.jpg?t=1688055663", "os_windows": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "431240": {"name": "Golf With Your Friends", "url_name": "Golf_With_Your_Friends", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1499\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$14.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/431240\/capsule_184x69.jpg?t=1695665694", "os_windows": true, "os_macos": true, "os_linux": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "1943950": {"name": "Escape the Backrooms", "url_name": "Escape_the_Backrooms", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"999\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$9.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1943950\/capsule_184x69.jpg?t=1696556336", "os_windows": true, "vr_htcvive": true, "early_access": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "1332720": {"name": "Thief Simulator 2", "url_name": "Thief_Simulator_2", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1999\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$19.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1332720\/capsule_184x69.jpg?t=1697144924", "os_windows": true, "has_live_broadcast": true, "localized": true, "localized_english": true}, "1629520": {"name": "A Little to the Left", "url_name": "A_Little_to_the_Left", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1499\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$14.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1629520\/capsule_184x69.jpg?t=1696002097", "os_windows": true, "os_macos": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "728880": {"name": "Overcooked! 2", "url_name": "Overcooked_2", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"2499\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$24.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/728880\/capsule_184x69.jpg?t=1670442579", "os_windows": true, "os_macos": true, "os_linux": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "620980": {"name": "Beat Saber", "url_name": "Beat_Saber", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"2999\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$29.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/620980\/capsule_184x69.jpg?t=1696624948", "os_windows": true, "vr_htcvive": true, "vr_oculusrift": true, "vr_windowsmr": true, "virtual_reality": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "1202200": {"name": "Paleo Pines", "url_name": "Paleo_Pines", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"2999\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$29.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1202200\/capsule_184x69.jpg?t=1695731407", "os_windows": true, "os_linux": true, "has_live_broadcast": true, "localized": true, "localized_english": true}, "286160": {"name": "Tabletop Simulator", "url_name": "Tabletop_Simulator", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1999\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$19.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/286160\/capsule_184x69.jpg?t=1620412025", "os_windows": true, "os_macos": true, "os_linux": true, "vr_htcvive": true, "vr_oculusrift": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "1988550": {"name": "To The Core", "url_name": "To_The_Core", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"799\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$7.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1988550\/capsule_184x69.jpg?t=1691658424", "os_windows": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "1435790": {"name": "Escape Simulator", "url_name": "Escape_Simulator", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1499\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$14.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1435790\/capsule_184x69.jpg?t=1694095488", "os_windows": true, "os_macos": true, "os_linux": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "1476970": {"name": "IdleOn - The Idle MMO", "url_name": "IdleOn__The_Idle_MMO", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"0\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">Free To Play<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1476970\/capsule_184x69.jpg?t=1695018022", "os_windows": true, "early_access": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "1755830": {"name": "Astrea: Six-Sided Oracles", "url_name": "Astrea_SixSided_Oracles", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"2499\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$24.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1755830\/capsule_184x69.jpg?t=1696455720", "os_windows": true, "has_live_broadcast": true, "localized": true, "localized_english": true}, "774171": {"name": "Muse Dash", "url_name": "Muse_Dash", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"299\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$2.99<\/div><\/div><\/div>", "descids": [1, 5], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/774171\/capsule_184x69.jpg?t=1696436630", "os_windows": true, "os_macos": true, "has_live_broadcast": false, "localized": true, "localized_english": true, "has_adult_content_sex": true}, "880940": {"name": "Pummel Party", "url_name": "Pummel_Party", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1499\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$14.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/880940\/capsule_184x69.jpg?t=1670489597", "os_windows": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "322170": {"name": "Geometry Dash", "url_name": "Geometry_Dash", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"399\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$3.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/322170\/capsule_184x69.jpg?t=1624472273", "os_windows": true, "os_macos": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "285900": {"name": "Gang Beasts", "url_name": "Gang_Beasts", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1999\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$19.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/285900\/capsule_184x69.jpg?t=1696409760", "os_windows": true, "os_macos": true, "os_linux": true, "has_live_broadcast": false, "localized": true, "localized_english": true, "status_string": "Early Access Now Available"}, "1267910": {"name": "Melvor Idle", "url_name": "Melvor_Idle", "discount_block": "<div class=\"discount_block \" data-price-final=\"499\" data-bundlediscount=\"0\" data-discount=\"50\"><div class=\"discount_pct\">-50%<\/div><div class=\"discount_prices\"><div class=\"discount_original_price\">$9.99<\/div><div class=\"discount_final_price\">$4.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1267910\/capsule_184x69.jpg?t=1694096156", "os_windows": true, "os_macos": true, "os_linux": true, "has_live_broadcast": false, "discount": true, "localized": true, "localized_english": true}, "1158160": {"name": "Coral Island", "url_name": "Coral_Island", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"2499\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$24.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1158160\/capsule_184x69_alt_assets_0.jpg?t=1694836579", "os_windows": true, "early_access": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "386940": {"name": "Ultimate Chicken Horse", "url_name": "Ultimate_Chicken_Horse", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1499\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$14.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/386940\/capsule_184x69.jpg?t=1694456160", "os_windows": true, "os_macos": true, "os_linux": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "627690": {"name": "Idle Champions of the Forgotten Realms", "url_name": "Idle_Champions_of_the_Forgotten_Realms", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"0\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">Free to Play<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/627690\/capsule_184x69.jpg?t=1697050369", "os_windows": true, "os_macos": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "1677740": {"name": "Stumble Guys", "url_name": "Stumble_Guys", "discount_block": "<div class=\"discount_block empty \"><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1677740\/capsule_184x69.jpg?t=1696588681", "os_windows": true, "has_live_broadcast": false, "localized": true, "localized_english": true}, "1135690": {"name": "Unpacking", "url_name": "Unpacking", "discount_block": "<div class=\"discount_block  no_discount\" data-price-final=\"1999\" data-bundlediscount=\"0\" data-discount=\"0\"><div class=\"discount_prices\"><div class=\"discount_final_price\">$19.99<\/div><\/div><\/div>", "descids": [], "small_capsulev5": "https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/1135690\/capsule_184x69.jpg?t=1681259723", "os_windows": true, "os_macos": true, "os_linux": true, "has_live_broadcast": false, "localized": true, "localized_english": true}}, "rgPackages": [], "rgBundles": []});
                        GStoreItemData.AddNavParams({
                            recommended: "1_5_9__300",
                            recommend_franchise: "1_5_9__316",
                            more_from_franchise: "1_5_9__317",
                            bundle_component_preview: "1_5_9__412",
                            recommended_ranked_played: "1_5_9__862",
                        });


                        $J(function () {
                            var $Expander = $J('#devnotes_expander');
                            if ($Expander.length && $Expander.height() < parseInt($Expander.css('max-height'))) {
                                $J('#devnotes_more').hide();
                            }

                            CollapseLongStrings('.dev_row .summary.column');

                            InitAutocollapse();
                            InitHorizontalAutoSliders();

                            Responsive_ReparentItemsInResponsiveMode('.responsive_apppage_details_right', $J('#responsive_apppage_details_right_ctn'));
                            Responsive_ReparentItemsInResponsiveMode('.responsive_apppage_details_left', $J('#responsive_apppage_details_left_ctn'));
                            Responsive_ReparentItemsInResponsiveMode('.responsive_apppage_reviewblock', $J('#responsive_apppage_reviewblock_ctn'));

                            //hack to workaround chrome bug
                            $J('#responsive_apppage_reviewblock_ctn').css('width', '100%');
                            window.setTimeout(function () {
                                $J('#responsive_apppage_reviewblock_ctn').css('width', '');
                            }, 1);


                            var watcher = new CScrollOffsetWatcher($J('#app_reviews_hash'), OnLoadReviews);
                            watcher.SetBufferHeight(0);

                            InitPlaytimeFilterSlider();

                            // on Tablet wait to do this when the window is fully loaded - see OnPageLoaded()
                            ReparentAppLandingPageForSmallScreens();


                            AddRightNavStickyPaddingOnTablet();

                            var usability = InitUsabilityTracker("https:\/\/store.steampowered.com\/app\/usabilitytracking\/872990");
                            usability.ScheduleUpload();

                        });
                        GDynamicStore.OnReady(function () {
                            RenderMoreLikeThisBlock(["1260320", "1868140", "413150", "960090", "613100", "291550", "1794680", "1290000", "431240", "1943950", "1332720", "1629520", "728880", "620980", "1202200", "286160", "1988550", "1435790", "1476970", "1755830", "774171", "880940", "322170", "285900", "1267910", "1158160", "386940", "627690", "1677740", "1135690"], !!true);
                            RenderFranchiseAppBlock([]);
                            RenderMoreDLCFromBaseGameBlock([]);

                        });


                        function OpenTagModal() {
                            ShowAppTagModal(872990);
                        }

                    </script>

                    <!-- Background container -->
                    <!--style="background-image: url('https://cdn.cloudflare.steamstatic.com/steam/clusters/sale_autumn2019_assets/54b5034d397baccb93181cc6/home_header_bg_rainy_vietnamese.gif?t=1700618391');"-->
                    <div class="game_page_background game"
                         style="background-image: url('https://cdn.akamai.steamstatic.com/steam/apps/872990/page_bg_generated_v6b.jpg?t=1597940503');"
                         data-miniprofile-appid="872990">
                        <!-- Container main -->
                        <%@include file="tag.jsp"%>
                        <!-- Container tag of container -->
                        <!-- create two column layout for Deck, Tablet sized screens -->
                        <div id="tabletGrid" class="tablet_grid">
                            <div class="page_content_ctn" itemscope itemtype="http://schema.org/Product">
                                <meta itemprop="image"
                                      content="https://cdn.akamai.steamstatic.com/steam/apps/872990/capsule_231x87.jpg?t=1597940503">
                                <div itemprop="offers" itemscope itemtype="http://schema.org/Offer" style="display: none;">
                                    <meta itemprop="priceCurrency" content="USD">
                                    <meta itemprop="price" content="4.99">
                                </div>
                                <!-- container of container -->
                                <div class="page_title_area game_title_area page_content" data-gpnav="columns">
                                    <!-- title of content of container -->
                                    <div class="breadcrumbs" data-panel="{&quot;flow-children&quot;:&quot;row&quot;}">
                                        <div class="blockbg">
                                            <!-- Come back home  -->
                                            <a href="/game-store-app-v1/home">All Games</a>
                                            &gt;
                                            <a href="#">${game.categories[0].categoryName}</a>
                                            &gt;
                                            <a href="javascript:void(0);" onclick="location.reload();">
                                                <span itemprop="name">${game.gameName}</span>
                                            </a>

                                        </div>
                                        <div style="clear: left;"></div>
                                    </div>

                                    <!-- Name of Game And button Community Hub  -->
                                    <div class="apphub_HomeHeaderContent">

                                        <div class="apphub_HeaderStandardTop">

                                            <!-- Come to Page Community Hub -->
                                            <div class="apphub_OtherSiteInfo">
                                                <a class="btnv6_blue_hoverfade btn_medium" href="#">
                                                    <span>Community Hub</span>
                                                </a>
                                            </div>
                                            <!-- Image of Game -->
                                            <div class="apphub_AppIcon"><img
                                                    src="https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/apps/872990/f5fb65089327af07fb9f1836c0fa6c439c5d2fba.jpg">
                                                <div class="overlay"></div>
                                            </div>

                                            <!-- Name of Game -->
                                            <div id="appHubAppName" class="apphub_AppName">
                                                ${game.gameName}
                                            </div>
                                            <div style="clear: both"></div>

                                        </div>

                                    </div>
                                </div> <!-- End of Name and Link of Game -->
                                <div style="clear: left;"></div>
                                <!-- Container of container (Content and Information of Game) -->
                                <div class="block game_media_and_summary_ctn">
                                    <!-- Script all container -->
                                    <script type="text/javascript">
                                        var strRequiredVersion = "9";
                                        if (typeof (g_bIsOnMac) != 'undefined' && g_bIsOnMac)
                                            strRequiredVersion = "10.1.0";

                                    </script>
                                    <div class="game_background_glow">
                                        <div data-panel="{&quot;autoFocus&quot;:true,&quot;focusable&quot;:true,&quot;clickOnActivate&quot;:true}"
                                             class="responsive_page_header_img" style="display: none;">
                                            <!--Global Image of Game -->
                                            <!-- Search by Name of Games -->
                                            <img style="width:100%;" src="${game.gameimgs[0].imgLink}">
                                        </div>
                                        <!-- Content Information about Game-->
                                        <div class="block_content page_content" id="game_highlights"
                                             data-panel="{&quot;flow-children&quot;:&quot;column&quot;}">

                                            <!-- Right Tag include information of Game -->
                                            <div class="rightcol"
                                                 data-panel="{&quot;flow-children&quot;:&quot;column&quot;}">
                                                <!-- Main Information -->
                                                <div class="glance_ctn">

                                                    <!-- Summary Information Game -->
                                                    <div id="gameHeaderImageCtn" class="game_header_image_ctn">
                                                        <!-- Search by Name of Games -->
                                                        <img class="game_header_image_full"
                                                             src="${game.gameimgs[0].imgLink}">
                                                        <!-- Name of Game -->
                                                        <div id="appHubAppName_responsive" style="display: none;"
                                                             class="apphub_AppName">${game.gameName}</div>

                                                        <div data-panel="{&quot;type&quot;:&quot;PanelGroup&quot;}"
                                                             id="appHeaderGridContainer" class="app_header_grid_container"
                                                             style="display:none">
                                                            <!-- Developer Game  -->
                                                            <div class="grid_label">Developer</div>
                                                            <div class="grid_content">
                                                                <a href="#">${game.devName}</a>
                                                            </div>
                                                            <!-- Publish Game -->
                                                            <div class="grid_label">Publisher</div>
                                                            <div class="grid_content">
                                                                <a href="#">${game.pubName}
                                                                </a>
                                                            </div>

                                                            <!-- Start day publishing this Game -->
                                                            <div class="grid_label grid_date">Released</div>
                                                            <div class="grid_content grid_date">
                                                                <fmt:parseDate var="parsedDate" value="${game.releaseDate}" pattern="yyyy-MM-dd HH:mm:ss.SS" />
                                                                <fmt:formatDate value="${parsedDate}" pattern="MMM dd, yyyy" />
                                                            </div>
                                                        </div>


                                                    </div>
                                                    <!-- Summary Information Gảm -->

                                                    <!-- Titele of Game-->
                                                    <!-- Stream Games is a set of mini games that Twitch Streamers can play
                                                        with their viewers' interaction  -->
                                                    <!-- Title -->
                                                    <div class="game_description_snippet">
                                                        ${game.title}
                                                    </div>

                                                    <!-- Information of Game  -->
                                                    <div class="glance_ctn_responsive_left">

                                                        <!-- Recent view and All View is Review -->
                                                        <div id="userReviews" class="user_reviews">
                                                            <!-- Recent review  -->
                                                            <div class="user_reviews_summary_row"
                                                                 onclick="window.location = '#app_reviews_hash'"
                                                                 style="cursor: pointer;"
                                                                 data-tooltip-html="${game.percentPos}% of the ${game.numbReview} user reviews in the last 30 days are positive.">
                                                                <div class="subtitle column">Recent Reviews:</div>
                                                                <div class="summary column">
                                                                    <!-- Negative < 30% -->
                                                                    <!-- Normal 30%-50% -->
                                                                    <!-- Medium 50%-70% -->
                                                                    <!-- Good 70-80% -->
                                                                    <!-- Postive 80-95% -->
                                                                    <!-- Overwhelmingly Positive > 95% -->
                                                                    <span class="game_review_summary positive">
                                                                        ${game.globalReview}
                                                                    </span>
                                                                    <span class="responsive_hidden">
                                                                        (${game.numbReview})
                                                                    </span>
                                                                    <span
                                                                        class="nonresponsive_hidden responsive_reviewdesc">
                                                                        - ${game.percentPos} % of the ${game.numbReview} user reviews in the last 30 days
                                                                        are positive. </span>
                                                                </div>
                                                            </div>
                                                            <!-- All View -->
                                                            <div class="user_reviews_summary_row"
                                                                 onclick="window.location = '#app_reviews_hash'"
                                                                 style="cursor: pointer;"
                                                                 data-tooltip-html="${game.percentPos}% of the ${game.numbReview} user reviews for this game are positive."
                                                                 itemprop="aggregateRating" itemscope
                                                                 itemtype="http://schema.org/AggregateRating">
                                                                <!-- Chuyển hướng xuống phần đánh giá  -->
                                                                <!-- Data-tooltip-html: Overview for Game -->

                                                                <div class="subtitle column all">All Reviews:</div>
                                                                <div class="summary column">
                                                                    <!-- Negative < 30% -->
                                                                    <!-- Normal 30%-50% -->
                                                                    <!-- Medium 50%-70% -->
                                                                    <!-- Good 70-80% -->
                                                                    <!-- Postive 80-95% -->
                                                                    <!-- Overwhelmingly Positive > 95% -->
                                                                    <span class="game_review_summary positive"
                                                                          itemprop="description" style="margin-left: 10px;">
                                                                        ${game.globalReview}
                                                                    </span>

                                                                    <!-- Total Number Assigments from playes  -->
                                                                    <!-- mờ -->
                                                                    <span class="responsive_hidden">
                                                                        (${game.numbReview})
                                                                    </span>

                                                                    <!-- Hidden -->
                                                                    <!-- percentage Positive assigment from players -->
                                                                    <span class="nonresponsive_hidden responsive_reviewdesc">
                                                                        - ${game.percentPos} % of the ${game.numbReview} user reviews in the last 30 days
                                                                        are positive.
                                                                    </span>

                                                                    <!-- microdata -->
                                                                    <meta itemprop="reviewCount" content="36">
                                                                    <meta itemprop="ratingValue" content="8">
                                                                    <meta itemprop="bestRating" content="10">
                                                                    <meta itemprop="worstRating" content="1">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <!-- Date Start Release Game  -->
                                                        <div class="release_date">
                                                            <div class="subtitle column">Release Date:</div>
                                                            <!-- Date -->
                                                            <!--Jul 7, 2018-->
                                                            <div class="date">
                                                                <fmt:parseDate var="parsedDate" value="${game.releaseDate}" pattern="yyyy-MM-dd HH:mm:ss.SS" />
                                                                <fmt:formatDate value="${parsedDate}" pattern="MMM dd, yyyy" />
                                                            </div>
                                                        </div>
                                                        <!-- Developer and Publisher Game ís sample -->
                                                        <!-- Developer  Game -->
                                                        <div class="dev_row">
                                                            <div class="subtitle column">Developer:</div>
                                                            <div class="summary column" id="developers_list">
                                                                <!-- Link to connect Developer Game-->
                                                                <a href="#">
                                                                    ${game.devName}
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <!-- Publisher Game -->
                                                        <div class="dev_row">
                                                            <div class="subtitle column">Publisher:</div>
                                                            <div class="summary column">
                                                                <!-- Link to connect Developer Game-->
                                                                <a href="#">
                                                                    ${game.pubName}
                                                                </a>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <!-- End of Information of Game -->

                                                    <!-- Type of this product Game -->
                                                    <div id="glanceCtnResponsiveRight" class="glance_ctn_responsive_right"
                                                         data-panel="{&quot;flow-children&quot;:&quot;column&quot;}">
                                                        <!-- when the javascript runs, it will set these visible or not depending on what fits in the area -->
                                                        <div class="responsive_block_header">Tags</div>

                                                        <!-- Type of this product Game AS User define -->
                                                        <div class="glance_tags_ctn popular_tags_ctn"
                                                             data-panel="{&quot;flow-children&quot;:&quot;row&quot;}">
                                                            <div class="glance_tags_label">
                                                                Popular user-defined tags for this product:
                                                            </div>
                                                            <!-- data appid Type of Game -->

                                                            <div data-panel="{&quot;flow-children&quot;:&quot;row&quot;}"
                                                                 class="glance_tags popular_tags" data-appid="872990">
                                                                <c:forEach items="${game.categories}" var="o">
                                                                    <a href="category?cateid=${o.categoryId}" class="app_tag" style="display: none;">
                                                                        ${o.categoryName}
                                                                    </a>
                                                                </c:forEach>
                                                                <!-- Đòi hỏi Sign In and Login -->
                                                                <div class="app_tag add_button"
                                                                     data-panel="{&quot;focusable&quot;:true,&quot;clickOnActivate&quot;:true}"
                                                                     onclick="ShowAppTagModal(872990)">
                                                                    +
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--  Summary of Review -->
                                                        <div id="reviewsHeader_responsive" style="display: none;"
                                                             class="responsive_block_header">Reviews</div>
                                                        <div data-panel="{&quot;focusable&quot;:true,&quot;clickOnActivate&quot;:true}"
                                                             id="userReviews_responsive" style="display: none;"
                                                             class="user_reviews"
                                                             onclick="window.location = '#app_reviews_hash'">

                                                            <div id="appReviewsAll_responsive"
                                                                 class="user_reviews_summary_row"
                                                                 onclick="window.location = '#app_reviews_hash'"
                                                                 style="cursor: pointer;">

                                                                <div class="subtitle column all">
                                                                    All Reviews:
                                                                </div>

                                                                <div class="summary column">
                                                                    <span class="game_review_summary positive">
                                                                        Overwhelmingly Positive
                                                                    </span>
                                                                    <!-- Span = percentage + Total number of reviews -->
                                                                    <span class="responsive_reviewdesc_short">
                                                                        (96% of 729)&nbsp;
                                                                        <span class="desc_short">
                                                                            All Time</span>
                                                                    </span>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <!-- End of Summary Review -->
                                                    </div>
                                                    <!-- End of Type of Game -->
                                                    <div style="clear: both;"></div>
                                                </div>
                                                <!--End Main Information -->
                                            </div>
                                            <!--End Right Tag include information of Game -->

                                            <!-- Left Tag include Images and Vides of Game -->
                                            <div data-panel="{&quot;maintainX&quot;:true,&quot;flow-children&quot;:&quot;column&quot;}"
                                                 class="leftcol">
                                                <!-- Images and Vides container of Game -->
                                                <div class="sp-slideshow">
                                                    <style>
                                                    a {
                                                        -moz-transition: color 0.3s ease-out;
                                                        -webkit-transition: color 0.3s ease-out;
                                                        -o-transition: color 0.3s ease-out;
                                                        -ms-transition: color 0.3s ease-out;
                                                        transition: color 0.3s ease-out;
                                                    }
                                                    .top {
                                                        margin-bottom: 20px;
                                                    }
                                                    .top_content {
                                                        width: 680px;
                                                        text-align: center;
                                                        font-size: 12px;
                                                        margin: 0 auto;
                                                        text-transform: uppercase;
                                                    }
                                                    .top_content a {
                                                        color: #aaa;
                                                        text-decoration: none;
                                                    }
                                                    .top_content a:hover {
                                                        color: #fff;
                                                    }
                                                    @import url("normalize.css");
                                                    /* General Demo Style */
                                                    body {
                                                        font-family: "Open Sans Condensed", "Arial Narrow", serif;
                                                        background: #ddd
                                                            url(https://tympanus.net/Tutorials/CSS3FluidParallaxSlideshow/images/bg.jpg)
                                                            repeat top left;
                                                        font-weight: 400;
                                                        font-size: 15px;
                                                        color: #333;
                                                    }
                                                    a {
                                                        color: #555;
                                                        text-decoration: none;
                                                    }
                                                    .container {
                                                        width: 100%;
                                                        position: relative;
                                                    }
                                                    .clr {
                                                        clear: both;
                                                        padding: 0;
                                                        height: 0;
                                                        margin: 0;
                                                    }
                                                    .container > header {
                                                        margin: 10px;
                                                        padding: 20px 10px 10px 10px;
                                                        position: relative;
                                                        display: block;
                                                        text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
                                                        text-align: center;
                                                    }
                                                    .container > header h1 {
                                                        font-size: 40px;
                                                        line-height: 40px;
                                                        margin: 0;
                                                        position: relative;
                                                        font-weight: 300;
                                                        color: #707a8d;
                                                        text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.7);
                                                    }
                                                    .container > header h1 span {
                                                        font-weight: 700;
                                                    }
                                                    .container > header h2 {
                                                        font-size: 14px;
                                                        font-weight: 300;
                                                        margin: 0;
                                                        padding: 15px 0 5px 0;
                                                        color: #4d525d;
                                                        font-family: Cambria, Georgia, serif;
                                                        font-style: italic;
                                                        text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.9);
                                                    }
                                                    /* Header Style */
                                                    .codrops-top {
                                                        line-height: 24px;
                                                        font-size: 11px;
                                                        background: #fff;
                                                        background: rgba(255, 255, 255, 0.6);
                                                        text-transform: uppercase;
                                                        z-index: 9999;
                                                        position: relative;
                                                        font-family: Cambria, Georgia, serif;
                                                        box-shadow: 1px 0px 2px rgba(0, 0, 0, 0.2);
                                                    }
                                                    .codrops-top a {
                                                        padding: 0px 10px;
                                                        letter-spacing: 1px;
                                                        color: #333;
                                                        display: inline-block;
                                                    }
                                                    .codrops-top a:hover {
                                                        background: rgba(255, 255, 255, 0.3);
                                                    }
                                                    .codrops-top span.right {
                                                        float: right;
                                                    }
                                                    .codrops-top span.right a {
                                                        float: left;
                                                        display: block;
                                                    }
                                                    /* Demo Buttons Style */
                                                    .codrops-demos {
                                                        text-align: center;
                                                        display: block;
                                                        line-height: 30px;
                                                        padding: 5px 0px;
                                                    }
                                                    .codrops-demos a {
                                                        display: inline-block;
                                                        margin: 0px 4px;
                                                        padding: 0px 6px;
                                                        color: #aaa;
                                                        line-height: 20px;
                                                        font-size: 13px;
                                                        text-shadow: 1px 1px 1px #fff;
                                                        border: 1px solid #fff;
                                                        background: #f6f6f6; /* Old browsers */
                                                        background: -moz-linear-gradient(
                                                            top,
                                                            #ffffff 0%,
                                                            #f6f6f6 47%,
                                                            #ededed 100%
                                                            ); /* FF3.6+ */
                                                        background: -webkit-gradient(
                                                            linear,
                                                            left top,
                                                            left bottom,
                                                            color-stop(0%, #ffffff),
                                                            color-stop(47%, #f6f6f6),
                                                            color-stop(100%, #ededed)
                                                            ); /* Chrome,Safari4+ */
                                                        background: -webkit-linear-gradient(
                                                            top,
                                                            #ffffff 0%,
                                                            #f6f6f6 47%,
                                                            #ededed 100%
                                                            ); /* Chrome10+,Safari5.1+ */
                                                        background: -o-linear-gradient(
                                                            top,
                                                            #ffffff 0%,
                                                            #f6f6f6 47%,
                                                            #ededed 100%
                                                            ); /* Opera 11.10+ */
                                                        background: -ms-linear-gradient(
                                                            top,
                                                            #ffffff 0%,
                                                            #f6f6f6 47%,
                                                            #ededed 100%
                                                            ); /* IE10+ */
                                                        background: linear-gradient(
                                                            top,
                                                            #ffffff 0%,
                                                            #f6f6f6 47%,
                                                            #ededed 100%
                                                            ); /* W3C */
                                                        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed',GradientType=0 ); /* IE6-9 */
                                                        box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.3);
                                                    }
                                                    .codrops-demos a:hover {
                                                        color: #333;
                                                    }
                                                    .codrops-demos a:active {
                                                        background: #fff;
                                                    }
                                                    .codrops-demos a.current-demo,
                                                    .codrops-demos a.current-demo:hover {
                                                        background: #fff;
                                                        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ffffff',GradientType=0 ); /* IE6-9 */
                                                    }
                                                    .note {
                                                        padding: 20px;
                                                        text-align: center;
                                                    }
                                                    article,
                                                    aside,
                                                    details,
                                                    figcaption,
                                                    figure,
                                                    footer,
                                                    header,
                                                    hgroup,
                                                    nav,
                                                    section,
                                                    summary {
                                                        display: block;
                                                    }
                                                    audio,
                                                    canvas,
                                                    video {
                                                        display: inline-block;
                                                    }
                                                    audio:not([controls]) {
                                                        display: none;
                                                        height: 0;
                                                    }
                                                    [hidden] {
                                                        display: none;
                                                    }
                                                    html {
                                                        font-size: 100%; /* 1 */
                                                        -webkit-text-size-adjust: 100%; /* 2 */
                                                        -ms-text-size-adjust: 100%; /* 2 */
                                                    }
                                                    html,
                                                    button,
                                                    input,
                                                    select,
                                                    textarea {
                                                        font-family: sans-serif;
                                                    }
                                                    body {
                                                        margin: 0;
                                                    }
                                                    a:focus {
                                                        outline: thin dotted;
                                                    }
                                                    a:hover,
                                                    a:active {
                                                        outline: 0;
                                                    }
                                                    h1 {
                                                        font-size: 2em;
                                                        margin: 0.67em 0;
                                                    }

                                                    h2 {
                                                        font-size: 1.5em;
                                                        margin: 0.83em 0;
                                                    }

                                                    h3 {
                                                        font-size: 1.17em;
                                                        margin: 1em 0;
                                                    }

                                                    h4 {
                                                        font-size: 1em;
                                                        margin: 1.33em 0;
                                                    }

                                                    h5 {
                                                        font-size: 0.83em;
                                                        margin: 1.67em 0;
                                                    }

                                                    h6 {
                                                        font-size: 0.75em;
                                                        margin: 2.33em 0;
                                                    }
                                                    abbr[title] {
                                                        border-bottom: 1px dotted;
                                                    }
                                                    b,
                                                    strong {
                                                        font-weight: bold;
                                                    }

                                                    blockquote {
                                                        margin: 1em 40px;
                                                    }
                                                    dfn {
                                                        font-style: italic;
                                                    }
                                                    mark {
                                                        background: #ff0;
                                                        color: #000;
                                                    }
                                                    p,
                                                    pre {
                                                        margin: 1em 0;
                                                    }
                                                    pre,
                                                    code,
                                                    kbd,
                                                    samp {
                                                        font-family: monospace, serif;
                                                        _font-family: "courier new", monospace;
                                                        font-size: 1em;
                                                    }
                                                    pre {
                                                        white-space: pre;
                                                        white-space: pre-wrap;
                                                        word-wrap: break-word;
                                                    }
                                                    q {
                                                        quotes: none;
                                                    }

                                                    /* 2 */

                                                    q:before,
                                                    q:after {
                                                        content: "";
                                                        content: none;
                                                    }

                                                    small {
                                                        font-size: 75%;
                                                    }
                                                    sub,
                                                    sup {
                                                        font-size: 75%;
                                                        line-height: 0;
                                                        position: relative;
                                                        vertical-align: baseline;
                                                    }

                                                    sup {
                                                        top: -0.5em;
                                                    }

                                                    sub {
                                                        bottom: -0.25em;
                                                    }

                                                dl,
                                                menu,
                                                ol,
                                                ul {
                                                  margin: 1em 0;
                                                }

                                                dd {
                                                  margin: 0 0 0 40px;
                                                }
                                                menu,
                                                ol,
                                                ul {
                                                  padding: 0 0 0 40px;
                                                }
                                                nav ul,
                                                nav ol {
                                                  list-style: none;
                                                  list-style-image: none;
                                                }

                                                img {
                                                  border: 0; /* 1 */
                                                  -ms-interpolation-mode: bicubic; /* 2 */
                                                }

                                                svg:not(:root) {
                                                  overflow: hidden;
                                                }
                                                figure {
                                                  margin: 0;
                                                }
                                                form {
                                                  margin: 0;
                                                }
                                                fieldset {
                                                  border: 1px solid #c0c0c0;
                                                  margin: 0 2px;
                                                  padding: 0.35em 0.625em 0.75em;
                                                }
                                                legend {
                                                  border: 0; /* 1 */
                                                  padding: 0;
                                                  white-space: normal; /* 2 */
                                                }
                                                button,
                                                input,
                                                select,
                                                textarea {
                                                  font-size: 100%; /* 1 */
                                                  margin: 0; /* 2 */
                                                  vertical-align: baseline; /* 3 */
                                                }
                                                button,
                                                input {
                                                  line-height: normal; /* 1 */
                                                }
                                                button,
                                                input[type="button"],
                                                input[type="reset"],
                                                input[type="submit"] {
                                                  cursor: pointer; /* 1 */
                                                }
                                                button[disabled],
                                                input[disabled] {
                                                  cursor: default;
                                                }
                                                input[type="checkbox"],
                                                input[type="radio"] {
                                                  box-sizing: border-box; /* 1 */
                                                  padding: 0; /* 2 */
                                                }
                                                input[type="search"] {
                                                  -moz-box-sizing: content-box;
                                                  -webkit-box-sizing: content-box; /* 2 */
                                                  box-sizing: content-box;
                                                }
                                                input[type="search"]::-webkit-search-decoration,
                                                input[type="search"]::-webkit-search-cancel-button {
                                                  -webkit-appearance: none;
                                                }
                                                button::-moz-focus-inner,
                                                input::-moz-focus-inner {
                                                  border: 0;
                                                  padding: 0;
                                                }
                                                textarea {
                                                  overflow: auto; /* 1 */
                                                  vertical-align: top; /* 2 */
                                                }
                                                table {
                                                  border-collapse: collapse;
                                                  border-spacing: 0;
                                                }
                                                .sp-slideshow {
                                                  position: relative;
                                                  margin: 1px auto;
                                                  width: 98%;
                                                  max-width: 1000px;
                                                  min-width: 260px;
                                                  height: 100%;

                                                  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
                                                }
                                                .sp-content {
                                                  background: #7d7f72
                                                    url(https://tympanus.net/Tutorials/CSS3FluidParallaxSlideshow/images/grid.png)
                                                    repeat scroll 0 0;
                                                  position: relative;
                                                  width: 100%;
                                                  height: 100%;
                                                  overflow: hidden;
                                                }
                                                .sp-parallax-bg {
                                                  background: url(https://tympanus.net/Tutorials/CSS3FluidParallaxSlideshow/images/map.png)
                                                    repeat-x scroll 0 0;
                                                  -webkit-background-size: cover;
                                                  -moz-background-size: cover;
                                                  background-size: cover;
                                                  position: absolute;
                                                  top: 0;
                                                  left: 0;
                                                  width: 100%;
                                                  height: 100%;
                                                  overflow: hidden;
                                                }
                                                .sp-slideshow input {
                                                  position: absolute;
                                                  bottom: 15px;
                                                  left: 50%;
                                                  width: 9px;
                                                  height: 9px;
                                                  z-index: 1001;
                                                  cursor: pointer;
                                                  -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
                                                  filter: alpha(opacity=0);
                                                  opacity: 0;
                                                }
                                                .sp-slideshow input + label {
                                                  position: absolute;
                                                  bottom: 15px;
                                                  left: 50%;
                                                  width: 6px;
                                                  height: 6px;
                                                  display: block;
                                                  z-index: 1000;
                                                  border: 3px solid #fff;
                                                  border: 3px solid rgba(255, 255, 255, 0.9);
                                                  -webkit-border-radius: 50%;
                                                  -moz-border-radius: 50%;
                                                  border-radius: 50%;
                                                  -webkit-transition: background-color linear 0.1s;
                                                  -moz-transition: background-color linear 0.1s;
                                                  -o-transition: background-color linear 0.1s;
                                                  -ms-transition: background-color linear 0.1s;
                                                  transition: background-color linear 0.1s;
                                                }
                                                .sp-slideshow input:checked + label {
                                                  background-color: #fff;
                                                  background-color: rgba(255, 255, 255, 0.9);
                                                }
                                                .sp-selector-1,
                                                .button-label-1 {
                                                  margin-left: -36px;
                                                }
                                                .sp-selector-2,
                                                .button-label-2 {
                                                  margin-left: -18px;
                                                }
                                                .sp-selector-4,
                                                .button-label-4 {
                                                  margin-left: 18px;
                                                }
                                                .sp-selector-5,
                                                .button-label-5 {
                                                  margin-left: 36px;
                                                }
                                                .sp-arrow {
                                                  position: absolute;
                                                  top: 50%;
                                                  width: 28px;
                                                  height: 38px;
                                                  margin-top: -19px;
                                                  display: none;
                                                  opacity: 0.8;
                                                  cursor: pointer;
                                                  z-index: 1000;
                                                  background: transparent
                                                    url(https://tympanus.net/Tutorials/CSS3FluidParallaxSlideshow/images/arrows.png)
                                                    no-repeat;
                                                  -webkit-transition: opacity linear 0.3s;
                                                  -moz-transition: opacity linear 0.3s;
                                                  -o-transition: opacity linear 0.3s;
                                                  -ms-transition: opacity linear 0.3s;
                                                  transition: opacity linear 0.3s;
                                                }
                                                .sp-arrow:hover {
                                                  opacity: 1;
                                                }
                                                .sp-arrow:active {
                                                  margin-top: -18px;
                                                }
                                                .sp-selector-1:checked ~ .sp-arrow.sp-a2,
                                                .sp-selector-2:checked ~ .sp-arrow.sp-a3,
                                                .sp-selector-3:checked ~ .sp-arrow.sp-a4,
                                                .sp-selector-4:checked ~ .sp-arrow.sp-a5 {
                                                  right: 15px;
                                                  display: block;
                                                  background-position: top right;
                                                }
                                                .sp-selector-2:checked ~ .sp-arrow.sp-a1,
                                                .sp-selector-3:checked ~ .sp-arrow.sp-a2,
                                                .sp-selector-4:checked ~ .sp-arrow.sp-a3,
                                                .sp-selector-5:checked ~ .sp-arrow.sp-a4 {
                                                  left: 15px;
                                                  display: block;
                                                  background-position: top left;
                                                }
                                                .sp-slideshow input:checked ~ .sp-content {
                                                  -webkit-transition: background-position linear 0.6s,
                                                    background-color linear 0.8s;
                                                  -moz-transition: background-position linear 0.6s,
                                                    background-color linear 0.8s;
                                                  -o-transition: background-position linear 0.6s, background-color linear 0.8s;
                                                  -ms-transition: background-position linear 0.6s,
                                                    background-color linear 0.8s;
                                                  transition: background-position linear 0.6s, background-color linear 0.8s;
                                                }
                                                .sp-slideshow input:checked ~ .sp-content .sp-parallax-bg {
                                                  -webkit-transition: background-position linear 0.7s;
                                                  -moz-transition: background-position linear 0.7s;
                                                  -o-transition: background-position linear 0.7s;
                                                  -ms-transition: background-position linear 0.7s;
                                                  transition: background-position linear 0.7s;
                                                }
                                                input.sp-selector-1:checked ~ .sp-content {
                                                  background-position: 0 0;
                                                  background-color: #727b7f;
                                                }
                                                input.sp-selector-2:checked ~ .sp-content {
                                                  background-position: -100px 0;
                                                  background-color: #7f7276;
                                                }
                                                input.sp-selector-3:checked ~ .sp-content {
                                                  background-position: -200px 0;
                                                  background-color: #737f72;
                                                }
                                                input.sp-selector-4:checked ~ .sp-content {
                                                  background-position: -300px 0;
                                                  background-color: #79727f;
                                                }
                                                input.sp-selector-5:checked ~ .sp-content {
                                                  background-position: -400px 0;
                                                  background-color: #7d7f72;
                                                }
                                                input.sp-selector-1:checked ~ .sp-content .sp-parallax-bg {
                                                  background-position: 0 0;
                                                }
                                                input.sp-selector-2:checked ~ .sp-content .sp-parallax-bg {
                                                  background-position: -200px 0;
                                                }
                                                input.sp-selector-3:checked ~ .sp-content .sp-parallax-bg {
                                                  background-position: -400px 0;
                                                }
                                                input.sp-selector-4:checked ~ .sp-content .sp-parallax-bg {
                                                  background-position: -600px 0;
                                                }
                                                input.sp-selector-5:checked ~ .sp-content .sp-parallax-bg {
                                                  background-position: -800px 0;
                                                }
                                                .sp-slider {
                                                  position: relative;
                                                  left: 0;
                                                  width: 500%;
                                                  height: 100%;
                                                  list-style: none;
                                                  margin: 0;
                                                  padding: 0;
                                                  -webkit-transition: left ease-in 0.8s;
                                                  -moz-transition: left ease-in 0.8s;
                                                  -o-transition: left ease-in 0.8s;
                                                  -ms-transition: left ease-in 0.8s;
                                                  transition: left ease-in 0.8s;
                                                }
                                                .sp-slider > li {
                                                  color: #fff;
                                                  width: 20%;
                                                  -webkit-box-sizing: border-box;
                                                  -moz-box-sizing: border-box;
                                                  -o-box-sizing: border-box;
                                                  -ms-box-sizing: border-box;
                                                  box-sizing: border-box;
                                                  height: 100%;
                                                  padding: 0 50px;
                                                  float: left;
                                                  text-align: center;
                                                  opacity: 0.4;
                                                  -webkit-transition: opacity ease-in 0.4s 0.8s;
                                                  -moz-transition: opacity ease-in 0.4s 0.8s;
                                                  -o-transition: opacity ease-in 0.4s 0.8s;
                                                  -ms-transition: opacity ease-in 0.4s 0.8s;
                                                  transition: opacity ease-in 0.4s 0.8s;
                                                }
                                                .sp-slider > li img {
                                                  -webkit-box-sizing: border-box;
                                                  -moz-box-sizing: border-box;
                                                  -o-box-sizing: border-box;
                                                  -ms-box-sizing: border-box;
                                                  box-sizing: border-box;
                                                  display: block;
                                                  margin: 0 auto;
                                                  padding: 40px 0 50px 0;
                                                  max-height: 100%;
                                                  max-width: 100%;
                                                }
                                                input.sp-selector-1:checked ~ .sp-content .sp-slider {
                                                  left: 0;
                                                }
                                                input.sp-selector-2:checked ~ .sp-content .sp-slider {
                                                  left: -100%;
                                                }
                                                input.sp-selector-3:checked ~ .sp-content .sp-slider {
                                                  left: -200%;
                                                }
                                                input.sp-selector-4:checked ~ .sp-content .sp-slider {
                                                  left: -300%;
                                                }
                                                input.sp-selector-5:checked ~ .sp-content .sp-slider {
                                                  left: -400%;
                                                }
                                                input.sp-selector-1:checked ~ .sp-content .sp-slider > li:first-child,
                                                input.sp-selector-2:checked ~ .sp-content .sp-slider > li:nth-child(2),
                                                input.sp-selector-3:checked ~ .sp-content .sp-slider > li:nth-child(3),
                                                input.sp-selector-4:checked ~ .sp-content .sp-slider > li:nth-child(4),
                                                input.sp-selector-5:checked ~ .sp-content .sp-slider > li:nth-child(5) {
                                                  opacity: 1;
                                                }
                                                @media screen and (max-width: 840px) {
                                                  .sp-slideshow {
                                                    height: 345px;
                                                  }
                                                }
                                                @media screen and (max-width: 680px) {
                                                  .sp-slideshow {
                                                    height: 285px;
                                                  }
                                                }
                                                @media screen and (max-width: 560px) {
                                                  .sp-slideshow {
                                                    height: 235px;
                                                  }
                                                }
                                                @media screen and (max-width: 320px) {
                                                  .sp-slideshow {
                                                    height: 158px;
                                                  }
                                                }
                                                </style>     
                                                    <input
                                                        id="button-1"
                                                        type="radio"
                                                        name="radio-set"
                                                        class="sp-selector-1"
                                                        checked="checked"
                                                        />
                                                    <label for="button-1" class="button-label-1"></label>
                                                    <input id="button-2" type="radio" name="radio-set" class="sp-selector-2" />
                                                    <label for="button-2" class="button-label-2"></label>
                                                    <input id="button-3" type="radio" name="radio-set" class="sp-selector-3" />
                                                    <label for="button-3" class="button-label-3"></label>
                                                    <input id="button-4" type="radio" name="radio-set" class="sp-selector-4" />
                                                    <label for="button-4" class="button-label-4"></label>
                                                    <input id="button-5" type="radio" name="radio-set" class="sp-selector-5" />
                                                    <label for="button-5" class="button-label-5"></label>
                                                    <label for="button-1" class="sp-arrow sp-a1"></label>
                                                    <label for="button-2" class="sp-arrow sp-a2"></label>
                                                    <label for="button-3" class="sp-arrow sp-a3"></label>
                                                    <label for="button-4" class="sp-arrow sp-a4"></label>
                                                    <label for="button-5" class="sp-arrow sp-a5"></label>
                                                    <div class="sp-content">
                                                        <div class="sp-parallax-bg"></div>
                                                        <ul class="sp-slider clearfix">
                                                            <c:forEach items="${game.gameimgs}" var="o">
                                                                <li> <img src="${o.imgLink}"
                                                                          alt="${o.imgId}" style="width: 100%; height: auto;" />
                                                                </li> 
                                                            </c:forEach>
                                                        </ul>
                                                    </div>
                                                    <!-- sp-content -->     
                                                </div>
                                            </div>
                                            <div style="clear: both;"></div>
                                        </div>
                                    </div>
                                    <c:choose>
                                        <c:when test="${empty sessionScope.Account}">
                                            <div class="queue_overflow_ctn">
                                                <div class="queue_ctn">
                                                    <div id="queueActionsCtn" class="queue_actions_ctn">
                                                        <p>
                                                            <a href="#">Sign in</a> 
                                                            to add this item to your wishlist, follow it, or mark it as ignored
                                                        </p>
                                                    </div>
                                                </div>
                                                <!-- button area with share, follow, etc. for responsive ux -->
                                                <div id="rowBtnActions"
                                                     data-panel="{&quot;maintainY&quot;:true,&quot;flow-children&quot;:&quot;row&quot;}"
                                                     style="display: none;"></div>
                                            </div>
                                        </c:when>
                                        <c:otherwise></c:otherwise>
                                    </c:choose>
                                    <div id="purchaseOptionsContent" class="purchase_options_content"
                                         style="display: none;">
                                        <!-- game_area_purchase goes here -->
                                    </div>
                                </div>
                                <div class="page_content" data-panel="[]">
                                    <!-- Right Column -->
                                    <div class="rightcol game_meta_data"
                                         data-panel="{&quot;flow-children&quot;:&quot;column&quot;}">
                                        <div id="responsive_apppage_details_left_ctn"></div>

                                        <div id="appLinksAndInfoCtn" style="display:none;">
                                            <div class="responsive_block_header">Links &amp; info</div>
                                            <div id="appLinksAndInfo" class="game_page_autocollapse"
                                                 style="max-height: 180px;"></div>
                                        </div>

                                        <div id="responsive_apppage_details_right_ctn"></div>
                                        <div style="clear: both;"></div>

                                        <div class="block responsive_apppage_details_right heading responsive_hidden">Is
                                            this game relevant to you?</div>
                                        <div class="block responsive_apppage_details_right recommendation_noinfo responsive_hidden">
                                            <c:choose>
                                                <c:when test="${empty sessionScope.Account}">
                                                    <p>
                                                        Sign in to see reasons why you may or may not like this based on your games,
                                                        friends, and curators you follow.
                                                    </p>
                                                    <br>
                                                    <!--trang sign in-->
                                                    <a class="btnv6_blue_hoverfade btn_medium"
                                                       href="/">
                                                        <span>Sign In</span>
                                                    </a>
                                                    or 
                                                    <!--chưa đăng nhập-->
                                                </c:when>
                                                <c:otherwise>          
                                                </c:otherwise>
                                            </c:choose>
                                            <a class="btnv6_blue_hoverfade btn_medium"
                                               href="/game-store-app-v1/home">
                                                <span>Open in GameStore</span>
                                            </a>
                                        </div>
                                        <div class="responsive_block_header responsive_apppage_details_left">Features</div>
                                        <div class="block responsive_apppage_details_left" id="category_block">
                                            <div data-panel="{&quot;type&quot;:&quot;PanelGroup&quot;}"
                                                 class="game_area_features_list_ctn">
                                                <a class="game_area_details_specs_ctn"
                                                   data-panel="{&quot;flow-children&quot;:&quot;column&quot;}"
                                                   href="https://store.steampowered.com/search/?category2=36&snr=1_5_9__423">
                                                    <div class="icon"><img class="category_icon"
                                                                           src="https://store.akamai.steamstatic.com/public/images/v6/ico/ico_multiPlayer.png">
                                                    </div>
                                                    <div class="label">Online PvP</div>
                                                </a><a class="game_area_details_specs_ctn"
                                                       data-panel="{&quot;flow-children&quot;:&quot;column&quot;}"
                                                       href="https://store.steampowered.com/search/?category2=38&snr=1_5_9__423">
                                                    <div class="icon"><img class="category_icon"
                                                                           src="https://store.akamai.steamstatic.com/public/images/v6/ico/ico_coop.png">
                                                    </div>
                                                    <div class="label">Online Co-op</div>
                                                </a><a class="game_area_details_specs_ctn"
                                                       data-panel="{&quot;flow-children&quot;:&quot;column&quot;}"
                                                       href="https://store.steampowered.com/search/?category2=22&snr=1_5_9__423">
                                                    <div class="icon"><img class="category_icon"
                                                                           src="https://store.akamai.steamstatic.com/public/images/v6/ico/ico_achievements.png">
                                                    </div>
                                                    <div class="label">Steam Achievements</div>
                                                </a>
                                            </div>

                                            <div class="DRM_notice">
                                                Requires 3rd-Party Account:&nbsp;Twitch&nbsp; </div>



                                        </div>
                                        <div class="block responsive_apppage_details_right">
                                            <div class="block_title" id="LanguagesHeader">
                                                Languages<span class="responsive_hidden">:</span>
                                            </div>


                                            <div id="bannerLanguages"
                                                 data-panel="{&quot;focusable&quot;:true,&quot;clickOnActivate&quot;:true}"
                                                 class="responsive_banner_link" style="display: none"
                                                 onclick="ToggleBannerContentVisibility('#languageTable', '#expandLanguageBtn')">
                                                <div class="responsive_banner_link_title">
                                                    English and 1 more </div>
                                                <div id="expandLanguageBtn" class="expand_section"></div>
                                            </div>
                                            <div id="languageTable">

                                                <table class="game_language_options" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <th style="width: 94px;"></th>

                                                        <c:forEach items="${supports}" var="o">            
                                                            <th class="checkcol">${o}</th>
                                                        </c:forEach>
                                                    </tr>
                                                    <c:forEach items="${languageNames}" var="uniqueLanguageName">
                                                        <tr class="">
                                                            <td style="width: 94px; text-align: left" class="ellipsis">
                                                                ${uniqueLanguageName}
                                                            </td>
                                                            <c:forEach items="${game.languageSupports}" var="o">
                                                                <td class="checkcol">
                                                                    <c:choose>
                                                                        <c:when test="${o.support eq 'Interface' || o.support eq 'Full Audio' || o.support eq 'Subtitles'}">
                                                                            <span>&#10004;</span>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <!-- Không có hỗ trợ tương ứng, không hiển thị dấu check -->
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </td>
                                                            </c:forEach>
                                                        </tr>
                                                    </c:forEach>
                                                </table>
                                            </div>
                                        </div>
                                        <div data-panel="{&quot;focusable&quot;:true,&quot;clickOnActivate&quot;:true}"
                                             id="bannerAchievements" class="responsive_banner_link" style="display: none"
                                             onclick="window.location = 'https://steamcommunity.com/stats/872990/achievements'">
                                            <div class="responsive_banner_link_title responsive_chevron_right">View Steam
                                                Achievements <span class="responsive_banner_link_total">(6)</span></div>
                                        </div>

                                        <div class="block responsive_apppage_details_right" id="achievement_block">
                                            <div class="block_title">
                                                Includes 6 Steam Achievements </div>
                                            <div class="communitylink_achievement_images">
                                                <div class="communitylink_achievement">
                                                    <img class="communitylink_achievement" title="Best Viewers"
                                                         src="https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/872990/e79b7b7792bcdd77733814fd08486a9e376eee15.jpg">
                                                </div>
                                                <div class="communitylink_achievement">
                                                    <img class="communitylink_achievement" title="First"
                                                         src="https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/872990/1d30cd5db65df48b120522cc8bd1de67e0a426bb.jpg">
                                                </div>
                                                <div class="communitylink_achievement">
                                                    <img class="communitylink_achievement" title="Warriors Viewers"
                                                         src="https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/872990/f346f12faf980c8436990355ebe9c338165c5892.jpg">
                                                </div>
                                                <a class="communitylink_achievement communitylink_achivement_plusmore"
                                                   href="https://steamcommunity.com/stats/872990/achievements">
                                                    View<br>all 6 </a>
                                                <div style="clear: left;"></div>
                                            </div>
                                        </div>


                                        <div id="appDetailsUnderlinedLinks"
                                             class="block responsive_apppage_details_left game_details underlined_links">
                                            <div class="block_content">
                                                <div class="block_content_inner">
                                                    <div id="genresAndManufacturer" class="details_block">

                                                        <b>Title:</b> ${game.gameName}<br>

                                                        <b>Genre:</b> 
                                                        <span data-panel="{&quot;flow-children&quot;:&quot;row&quot;}">
                                                            <c:forEach items="${game.categories}" var="o">
                                                                <a href="category?cateid=${o.categoryId}">${o.categoryName}</a>,
                                                            </c:forEach>
                                                        </span><br>
                                                        <div class="dev_row">
                                                            <b>Developer:</b>
                                                            <a href="/"> ${game.devName}</a>
                                                        </div>
                                                        <div class="dev_row">
                                                            <b>Publisher:</b>
                                                            <a
                                                                href="/">${game.pubName}</a>
                                                        </div>


                                                        <b>Release Date:</b> 
                                                        <fmt:parseDate var="parsedDate" value="${game.releaseDate}" pattern="yyyy-MM-dd HH:mm:ss.SS" />
                                                        <fmt:formatDate value="${parsedDate}" pattern="MMM dd, yyyy" />
                                                        <br>
                                                    </div>


                                                    <div class="details_block" style="padding-top: 14px;">


                                                        <a class="linkbar"
                                                           href="https://steamcommunity.com/linkfilter/?url=https://www.twitch.tv/bronation"
                                                           target="_blank" rel=" noopener" class="ttip"
                                                           data-tooltip-text="https://www.twitch.tv/bronation">
                                                            <img
                                                                src="https://store.akamai.steamstatic.com/public/images//v6/social/twitch_32_white.png">
                                                            <span class="social_account">bronation on Twitch</span>
                                                            <img src="https://store.akamai.steamstatic.com/public/images/v5/ico_external_link.gif"
                                                                 border="0" align="bottom">
                                                        </a>
                                                        <a class="linkbar" href="https://twitter.com/StreamGamesSG"
                                                           target="_blank" rel="" class="ttip"
                                                           data-tooltip-text="https://twitter.com/StreamGamesSG">
                                                            <img
                                                                src="https://store.akamai.steamstatic.com/public/images//v6/social/twitter_32_white.png">
                                                            <span class="social_account">GameStore on Twitter</span>
                                                            <img src="https://store.akamai.steamstatic.com/public/images/v5/ico_external_link.gif"
                                                                 border="0" align="bottom">
                                                        </a>








                                                        <a class="linkbar responsive_chevron_right"
                                                           href="https://store.steampowered.com/newshub/?appids=872990&amp;snr=1_5_9__408"
                                                           target="_blank" rel="noreferrer">
                                                            View update history </a>
                                                        <a class="linkbar responsive_chevron_right"
                                                           href="https://store.steampowered.com/newshub/app/872990?snr=1_5_9__408"
                                                           target="_blank" rel="noreferrer">
                                                            Read related news </a>

                                                        <a class="linkbar responsive_chevron_right"
                                                           href="https://steamcommunity.com/app/872990/discussions/"
                                                           target="_blank" rel="noreferrer">
                                                            View discussions </a>


                                                        <a class="linkbar responsive_chevron_right"
                                                           href="https://steamcommunity.com/actions/Search?T=ClanAccount&K=Stream%20Games">
                                                            Find Community Groups </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="shareEmbedRow" class="block responsive_apppage_details_left"
                                             data-panel="{&quot;flow-children&quot;:&quot;row&quot;}">
                                            <a class="btnv6_blue_hoverfade btn_medium" href="#"
                                               onclick="ShowShareDialog();
                                                    return false;"><span>Share</span></a>
                                            <a class="btnv6_blue_hoverfade btn_medium" href="#"
                                               onclick="ShowEmbedWidget(872990);
                                                    return false;"><span>Embed</span></a>
                                            <a id="ReportAppBtn" class="btnv6_blue_hoverfade btn_medium"
                                               href="javascript:void(0)" onclick="ShowReportDialog(872990)"><span
                                                    data-tooltip-text="Report this Product"><i
                                                        class="ico16 reportv6"></i>&nbsp;</span></a>
                                        </div>

                                        <div id="shareBtn" style="display:none;"><a class="btnv6_blue_hoverfade btn_medium"
                                                                                    onclick="ShowShareDialog();
                                                    return false;"><span><img id="shareImg"
                                                                                                  src="https://store.akamai.steamstatic.com/public/shared/images/icon_share_android.svg"></span></a>
                                        </div>
                                        <div id="reportBtn" style="display:none;"><a class="btnv6_blue_hoverfade btn_medium"
                                                                                     href="javascript:void(0)" onclick="ShowReportDialog(872990)"><span><img
                                                        src="https://store.akamai.steamstatic.com/public/shared/images/icon_report.svg"></span></a>
                                        </div>

                                    </div>

                                    <div class="leftcol game_description_column"
                                         data-panel="{&quot;flow-children&quot;:&quot;column&quot;}">

                                        <div id="game_area_purchase" class="game_area_purchase">

                                            <div class="game_area_purchase_game_wrapper">
                                                <div class="game_area_purchase_game"
                                                     id="game_area_purchase_section_add_to_cart_275946">
                                                    <form name="add_to_cart_275946"
                                                          action="https://store.steampowered.com/cart/" method="POST">
                                                        <input type="hidden" name="snr" value="1_5_9__403">
                                                        <input type="hidden" name="originating_snr"
                                                               value="1_store-navigation__">
                                                        <input type="hidden" name="action" value="add_to_cart">
                                                        <input type="hidden" name="sessionid"
                                                               value="3fd425223d2242f3cec4dc3b">
                                                        <input type="hidden" name="subid" value="275946">
                                                    </form>
                                                    <div class="game_area_purchase_platform"><span
                                                            class="platform_img win"></span></div>
                                                    <h1>Buy ${game.gameName}</h1>
                                                    <!--                                                    style="bottom: -17px"-->
                                                    <div class="game_purchase_action" >
                                                        <div class="game_purchase_action_bg" style="height: 34px">
                                                            <div class="game_purchase_price price" data-price-final="499" style="margin-top: -10px">
                                                                <c:choose>
                                                                    <c:when test="${game.initialPrice eq 0}">
                                                                        Free to Play
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        ${game.discountPrice}đ
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </div>
                                                            <!--add to cart-->
                                                            <div class="btn_addtocart">
                                                                <a data-panel="{&quot;focusable&quot;:true,&quot;clickOnActivate&quot;:true}"
                                                                   class="btn_green_steamui btn_medium"
                                                                   href="/"
                                                                   id="btn_add_to_cart_275946" style="margin-top: -1px">
                                                                    <span>Add to Cart</span>
                                                                </a>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <!-- game_area_purchase -->


                                        <div id="bannerCommunity"
                                             data-panel="{&quot;focusable&quot;:true,&quot;clickOnActivate&quot;:true}"
                                             class="responsive_banner_link" style="display: none"
                                             onclick="window.location = 'https://steamcommunity.com/app/872990'">
                                            <div class="responsive_banner_link_title responsive_chevron_right">View
                                                Community Hub</div>
                                        </div>

                                        <div class="purchase_area_spacer">&nbsp;</div>





                                        <div data-featuretarget="events-row"></div>
                                        <div id="contentForThisGame_ctn">
                                        </div>
                                        <div data-panel="{&quot;type&quot;:&quot;PanelGroup&quot;}" id="aboutThisGame"
                                             class="game_page_autocollapse" style="max-height: 850px;">
                                            <div id="game_area_description" class="game_area_description">
                                                <h2>About This Game</h2>
                                                ${game.gameName} is a gaming title created by a game developer named ${game.devName}.<br />
                                                <br />
                                                ${game.gameName} will be published by game development studio ${game.pubName} on all copyrighted game distribution 
                                                systems from 
                                                <fmt:parseDate var="parsedDate" value="${game.releaseDate}" pattern="yyyy-MM-dd HH:mm:ss.SS" />
                                                <fmt:formatDate value="${parsedDate}" pattern="MMM dd, yyyy" />.
                                                <br />
                                                <br />
                                                <h2>Content of ${game.gameName}</h2> <br />
                                                ${game.title}<br />
                                                ${game.content}<br />
                                                <br />
                                                <h2>Support</h2> <br />
                                                ${game.gameName} provides language support in ${game.languageSupports[0].languageName}, French,... across various aspects
                                                of the game, including the Interface, Full audio, and Subtitles, ensuring a diverse gaming 
                                                experience for players."<br />
                                                <h2>Warning</h2> <br />
                                                ${game.warning}<br />
                                                <br/>
                                            </div>
                                        </div>
                                        <div class="game_page_autocollapse sys_req" style="max-height: 300px;">
                                            <h2>System Requirements</h2>
                                            <div class="sysreq_contents">
                                                <div class="game_area_sys_req sysreq_content active" data-os="win">
                                                    <div class="game_area_sys_req_leftCol" style="">
                                                        <ul style="margin-left: -40px">
                                                            <strong style="font-size: 0.8rem">${game.systems[0].typeRequirement}</strong><br>
                                                            <ul class="bb_ul" style="margin-left: -38px">
                                                                <li><strong>OS:</strong>${game.systems[0].operatingSystemName}®<br>
                                                                </li>
                                                                <li><strong>Processor:</strong>${game.systems[0].processor}<br></li>
                                                                <li><strong>Memory:</strong>${game.systems[0].memory} <br></li>
                                                                <li><strong>Graphics:</strong>${game.systems[0].graphic}<br>
                                                                </li>
                                                                <li><strong>DirectX:</strong>${game.systems[0].directX}<br></li>
                                                                <li><strong>Network:</strong>${game.systems[0].network}<br></li>
                                                                <li><strong>Storage:</strong>${game.systems[0].storage}</li>
                                                            </ul>
                                                        </ul>
                                                    </div>
                                                    <div class="game_area_sys_req_rightCol">
                                                        <ul>
                                                            <strong style="font-size: 0.8rem">${game.systems[1].typeRequirement}</strong><br>
                                                            <ul class="bb_ul" style="margin-left: -40px">
                                                                <li><strong>OS:</strong>${game.systems[1].operatingSystemName}®<br>
                                                                </li>
                                                                <li><strong>Processor:</strong>${game.systems[1].processor}<br></li>
                                                                <li><strong>Memory:</strong>${game.systems[1].memory}<br></li>
                                                                <li><strong>Graphics:</strong>${game.systems[1].directX}<br></li>
                                                                <li><strong>Network:</strong>${game.systems[1].network}<br></li>
                                                                <li><strong>Storage:</strong>${game.systems[1].storage}</li>
                                                            </ul>
                                                        </ul>
                                                    </div>
                                                    <div style="clear: both;"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <script type="text/javascript">
                                            $J(function () {
                                                var $Tabs = $J('.sysreq_tab');
                                                var $Content = $J('.sysreq_content');

                                                $Tabs.click(function () {
                                                    var $Tab = $J(this);
                                                    $Tabs.removeClass('active');
                                                    $Tab.addClass('active');

                                                    $Content.removeClass('active');
                                                    $Content.filter('[data-os=' + $Tab.data('os') + ']').addClass('active');

                                                    $Content.trigger('gamepage_autocollapse_expand');
                                                });
                                            });
                                        </script>





                                        <div class="block" id="recommended_block">
                                            <div class="block_header">
                                                <div class="right">
                                                    <a href="https://store.steampowered.com/recommended/morelike/app/872990/?snr=1_5_9__300"
                                                       class="deck_view_all_action_link">See all</a>
                                                </div>
                                                <h2>More like this</h2>
                                            </div>
                                            <div class="block_responsive_horizontal_scroll store_horizontal_autoslider block_content nopad"
                                                 id="recommended_block_content" data-usability="1000">
                                            </div>
                                        </div>

                                        <div id="responsive_apppage_reviewblock_ctn" class="rightcol game_meta_data"></div>



                                        <div class="steam_curators_block block responsive_apppage_reviewblock">
                                            <div class="block_header">
                                                <div class="right"><a
                                                        href="https://store.steampowered.com/curators/curatorsreviewing/?appid=872990&snr=1_5_9__top-curators">View
                                                        all</a></div>
                                                <h2>What Curators Say</h2>
                                                <div class="no_curators_followed">
                                                    4 Curators have reviewed this product. Click <a
                                                        href="https://store.steampowered.com/curators/curatorsreviewing/?appid=872990&snr=1_5_9__top-curators">here</a>
                                                    to see them. </div>
                                            </div>
                                        </div>



                                    </div>

                                    <div style="clear: both;"></div>
                                </div>


                                <div class="review_ctn">
                                    <div class="page_content">

                                        <div id="app_reviews_hash" class="app_reviews_area">
                                            <h2 class="user_reviews_header no_bottom_margin">Customer reviews</h2>

                                            <input type="hidden" id="review_appid" value="872990">
                                            <input type="hidden" id="review_default_day_range" value="30">
                                            <input type="hidden" id="review_start_date" value="-1">
                                            <input type="hidden" id="review_end_date" value="-1">
                                            <input type="hidden" id="review_summary_num_positive_reviews" value="34">
                                            <input type="hidden" id="review_summary_num_reviews" value="36">

                                            <div id="review_recent_events_container" class="review_recent_events  ">
                                            </div>
                                            <div id="review_histograms_container" class="collapsed">
                                                <canvas id="review_graph_canvas"></canvas>
                                                <div id="review_histogram_rollup_section" class="review_histogram_section">
                                                    <div class="user_reviews_summary_bar">
                                                        <div class="summary_section">
                                                            <div class="title">Overall Reviews:</div>
                                                            <span class="game_review_summary positive"
                                                                  data-tooltip-html="${game.percentPos}% of the ${game.numbReview} user reviews for this game are positive.">Positive</span>
                                                            <span>(${game.numbReview})</span>
                                                            <a class="tooltip"
                                                               data-tooltip-text="This summary uses only reviews written by customers that purchased the game directly from Steam."><img
                                                                    src="https://store.akamai.steamstatic.com/public/shared/images/ico/icon_questionmark.png"></a>
                                                        </div>
                                                    </div>
                                                    <div id="review_histogram_rollup_container" class="review_histogram">
                                                        <div id="review_histogram_rollup"></div>
                                                    </div>
                                                </div><!--
                                                -->
                                                <div id="review_histogram_recent_section"
                                                     class="review_histogram_section recent">
                                                    <div class="user_reviews_summary_bar">
                                                        <div class="summary_section">
                                                            <div class="title">Recent Reviews:</div>
                                                            <div class="summary_section">&nbsp;</div>
                                                        </div>
                                                    </div>
                                                    <div class="review_histogram">
                                                        <div id="review_histogram_recent"></div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div id="reviews_filter_options"
                                                 class="user_reviews_filter_options flyout graph_collapsed">
                                                <div class="user_reviews_filter_menu">
                                                    <div class="title">Review Type</div>
                                                    <div class="user_reviews_filter_menu_flyout">
                                                        <div class="user_reviews_filter_menu_flyout_content">
                                                            <input type="radio" name="review_type" value="all"
                                                                   id="review_type_all" checked
                                                                   onchange="ShowFilteredReviews()">
                                                            <label for="review_type_all">All&nbsp;<span
                                                                    class="user_reviews_count">(46)</span></label><br>
                                                            <input type="radio" name="review_type" value="positive"
                                                                   id="review_type_positive" onchange="ShowFilteredReviews()">
                                                            <label for="review_type_positive">Positive&nbsp;<span
                                                                    class="user_reviews_count">(42)</span></label><br>
                                                            <input type="radio" name="review_type" value="negative"
                                                                   id="review_type_negative" onchange="ShowFilteredReviews()">
                                                            <label for="review_type_negative">Negative&nbsp;<span
                                                                    class="user_reviews_count">(4)</span></label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="user_reviews_filter_menu">
                                                    <div class="title">Purchase Type</div>
                                                    <div class="user_reviews_filter_menu_flyout">
                                                        <div class="user_reviews_filter_menu_flyout_content">
                                                            <input type="radio" name="purchase_type" value="all"
                                                                   id="purchase_type_all" checked
                                                                   onchange="ChangeReviewPurchaseTypeFilter()">
                                                            <label for="purchase_type_all">All&nbsp;<span
                                                                    class="user_reviews_count">(46)</span></label><br>
                                                            <input type="radio" name="purchase_type" value="steam"
                                                                   id="purchase_type_steam"
                                                                   onchange="ChangeReviewPurchaseTypeFilter()">
                                                            <label for="purchase_type_steam">Steam Purchasers&nbsp;<span
                                                                    class="user_reviews_count">(36)</span> <a
                                                                    class="tooltip"
                                                                    data-tooltip-text="These are reviews written by customers that purchased the game directly from Steam."><img
                                                                        src="https://store.akamai.steamstatic.com/public/shared/images/ico/icon_questionmark_dark.png"></a></label><br>
                                                            <input type="radio" name="purchase_type"
                                                                   value="non_steam_purchase" id="purchase_type_non_steam"
                                                                   onchange="ChangeReviewPurchaseTypeFilter()">
                                                            <label for="purchase_type_non_steam">Other&nbsp;<span
                                                                    class="user_reviews_count">(10)</span> <a
                                                                    class="tooltip"
                                                                    data-tooltip-text="These are reviews written by customers that did not purchase the game on Steam. (This may include legitimate sources such as other digital stores, retail stores, testing purposes, or press review purposes. Or, from inappropriate sources such as copies given in exchange for reviews.)"><img
                                                                        src="https://store.akamai.steamstatic.com/public/shared/images/ico/icon_questionmark_dark.png"></a></label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="user_reviews_filter_menu">
                                                    <div class="title">Language</div>
                                                    <div class="user_reviews_filter_menu_flyout">
                                                        <div class="user_reviews_filter_menu_flyout_content">
                                                            <input type="radio" name="review_language"
                                                                   id="review_language_all" value="all"
                                                                   onchange="ShowFilteredReviews()">
                                                            <label for="review_language_all">All Languages&nbsp;<span
                                                                    class="user_reviews_count">(46)</span></label><br>
                                                            <input type="radio" name="review_language"
                                                                   id="review_language_mine" value="english" checked
                                                                   onchange="ShowFilteredReviews()">
                                                            <label for="review_language_mine">Your Languages&nbsp;<span
                                                                    class="user_reviews_count">(9)</span> <a class="tooltip"
                                                                    data-tooltip-html="Your preferences are currently set to show content authored in these languages: English.&lt;br&gt;&lt;br&gt; Click 'customize' below to modify your preferences.">
                                                                        <img src="https://store.akamai.steamstatic.com/public/shared/images/ico/icon_questionmark_dark.png"></a></label><br>
                                                            <div class="user_reviews_customize_language"><a
                                                                    href="https://store.steampowered.com//account/languagepreferences">Customize</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="user_reviews_filter_menu" id="reviews_date_range_menu">
                                                    <div class="title">Date Range</div>
                                                    <div class="user_reviews_filter_menu_flyout">
                                                        <div class="user_reviews_filter_menu_flyout_content">
                                                            <div class="user_reviews_date_range_explanation">
                                                                To view reviews within a date range, please click and drag a
                                                                selection on a graph above or click on a specific bar.
                                                                <br><br>
                                                                <span class="btn_darkblue_white_innerfade btn_small_thin"
                                                                      onclick="SetReviewsGraphVisibility(true);"><span>Show
                                                                        graph</span></span>
                                                            </div>
                                                            <input type="radio" name="review_date_range"
                                                                   id="review_date_range_all" value="all" checked
                                                                   onchange="ClearReviewDateFilter()">
                                                            <label for="review_date_range_all">Lifetime</label><br>
                                                            <input type="radio" name="review_date_range"
                                                                   id="review_date_range_histogram" value="include" disabled
                                                                   onchange="ShowFilteredReviews()">
                                                            <label for="review_date_range_histogram">Only Specific Range
                                                                (Select on graph above)&nbsp</label><br>
                                                            <input type="radio" name="review_date_range"
                                                                   id="review_date_range_exclude_histogram" value="exclude"
                                                                   disabled onchange="ShowFilteredReviews()">
                                                            <label for="review_date_range_exclude_histogram">Exclude
                                                                Specific Range (Select on graph above)&nbsp</label><br>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="user_reviews_filter_menu">
                                                    <div class="title">Playtime</div>
                                                    <div class="user_reviews_filter_menu_flyout">
                                                        <div class="user_reviews_filter_menu_flyout_content">

                                                            <div class="user_reviews_steam_labs_desc">
                                                                <a
                                                                    href="https://store.steampowered.com//communityrecommendations/"><img
                                                                        src="https://cdn.akamai.steamstatic.com/store/labs/main/images/steam_labs_logo.svg"><span>Brought
                                                                        to you by Steam Labs</span></a>
                                                            </div>

                                                            <div class="user_reviews_playtime_filter_explanation">
                                                                Filter reviews by the user's playtime when the review was
                                                                written: </div>

                                                            <input type="radio" name="review_playtime_preset"
                                                                   id="review_playtime_preset_0" value="0"
                                                                   onchange="SelectPlaytimeFilterPreset(0)" checked>
                                                            <label for="review_playtime_preset_0">No Minimum</label><br>
                                                            <input type="radio" name="review_playtime_preset"
                                                                   id="review_playtime_preset_1" value="1"
                                                                   onchange="SelectPlaytimeFilterPreset(1)">
                                                            <label for="review_playtime_preset_1">Over 1 hour</label><br>
                                                            <input type="radio" name="review_playtime_preset"
                                                                   id="review_playtime_preset_10" value="10"
                                                                   onchange="SelectPlaytimeFilterPreset(10)">
                                                            <label for="review_playtime_preset_10">Over 10 hours</label><br>

                                                            <div id="app_reviews_playtime_range_text">
                                                                <span id="app_reviews_playtime_range_text_min">No
                                                                    minimum</span> to <span
                                                                    id="app_reviews_playtime_range_text_max">No
                                                                    maximum</span>
                                                            </div>
                                                            <input type="hidden" id="app_reviews_playtime_range_min"
                                                                   value="0">
                                                            <input type="hidden" id="app_reviews_playtime_range_max"
                                                                   value="0">
                                                            <div id="app_reviews_playtime_slider"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="user_reviews_filter_display_as">
                                                    <span class="title">Display As: </span>
                                                    <select id="review_context" onchange="ShowFilteredReviews()">
                                                        <option value="summary">Summary</option>
                                                        <option value="all">Most Helpful</option>
                                                        <option value="recent">Recent</option>
                                                        <option value="funny">Funny</option>
                                                    </select>
                                                </div>

                                                <div id="user_reviews_offtopic_activity_menu"
                                                     class="user_reviews_filter_menu" style="display: none" ;>
                                                    <div class="title">Off-topic Review Activity</div>
                                                    <div class="user_reviews_filter_menu_flyout">
                                                        <div class="user_reviews_filter_menu_flyout_content">
                                                            <div class="user_reviews_offtopic_activity_explanation">
                                                                When enabled, off-topic review activity will be filtered
                                                                out. This defaults to your Review Score Setting. Read more
                                                                about it in the <a
                                                                    href="https://steamcommunity.com/games/593110/announcements/detail/1808664240333155775?snr=1_5_9_">blog
                                                                    post</a>. </div>
                                                            <input type="checkbox" id="reviews_offtopic_activity_checkbox"
                                                                   onchange="ChangedOfftopicReviewActivityFilter()"
                                                                   checked><label
                                                                   for="reviews_offtopic_activity_checkbox">Enabled</label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div style="float: right">
                                                    <span id="review_show_graph_button"
                                                          class="btnv6_blue_hoverfade btn_small_thin review_graph_toggle"
                                                          onclick="SetReviewsGraphVisibility(true);
                                                            "><span>Show
                                                            graph</span>
                                                        <div class="graph_toggle_icon down">&nbsp;</div>
                                                    </span>
                                                    <span id="review_hide_graph_button"
                                                          class="btnv6_blue_hoverfade btn_small_thin review_graph_toggle"
                                                          onclick="SetReviewsGraphVisibility(false);"><span>Hide
                                                            graph</span>
                                                        <div class="graph_toggle_icon up">&nbsp;</div>
                                                    </span>
                                                </div>

                                                <div style="clear: both"></div>
                                            </div>

                                            <div class="reviews_info_ctn">
                                                <div id="reviews_active_filters"
                                                     data-panel="{&quot;focusable&quot;:true,&quot;clickOnActivate&quot;:true}"
                                                     class="user_reviews_active_filters"
                                                     onclick="ShowReviewSettingsModal();">
                                                    <div id="reviews_filter_title" class="title">Filters</div>

                                                    <div id="reviews_filter_title_responsive" style="display:none"
                                                         class="title">
                                                        <img
                                                            src="https://store.akamai.steamstatic.com/public/images/bigpicture/icon_settings.png" />Filters
                                                    </div>
                                                    <div id="reviews_filter_type" class="active_filter"
                                                         onclick="ClearReviewTypeFilter()"></div>
                                                    <div id="reviews_filter_purchase_type" class="active_filter"
                                                         onclick="ClearReviewPurchaseTypeFilter()"></div>
                                                    <div id="reviews_filter_language" class="active_filter "
                                                         onclick="ClearReviewLanguageFilter()"></div>
                                                    <div id="reviews_filter_graph" class="active_filter"
                                                         onclick="ClearReviewDateRangeFilter()"><span
                                                            id="review_selected_histogram_date_range_prefix"></span><span
                                                            id="review_selected_histogram_date_range_text"></span></div>
                                                    <div id="reviews_filter_offtopic_activity" class="active_filter"
                                                         onclick="ClearOfftopicReviewActivityFilter()">Excluding Off-topic
                                                        Review Activity</div>
                                                    <div id="reviews_filter_playtime" class="active_filter"
                                                         onclick="ClearReviewPlaytimeFilter()">Playtime: <span
                                                            id="review_playtime_preset_text"></span></div>
                                                </div>

                                                <div class="user_reviews_filter_score visible"
                                                     id="user_reviews_filter_score"></div>

                                            </div>

                                            <div id="review_selected_filters"></div>

                                            <div id="LoadingMoreReviewsall" style="display: none"
                                                 class="loading_more_reviews">
                                                <img src="https://store.akamai.steamstatic.com/public/shared/images/throbber.gif"
                                                     class="loading_more_reviews_throbber">
                                                Loading reviews...
                                            </div>
                                            <div id="LoadingMoreReviewsrecent" style="display: none"
                                                 class="loading_more_reviews">
                                                <img src="https://store.akamai.steamstatic.com/public/shared/images/throbber.gif"
                                                     class="loading_more_reviews_throbber">
                                                Loading reviews...
                                            </div>
                                            <div id="LoadingMoreReviewspositive" style="display: none"
                                                 class="loading_more_reviews">
                                                <img src="https://store.akamai.steamstatic.com/public/shared/images/throbber.gif"
                                                     class="loading_more_reviews_throbber">
                                                Loading reviews...
                                            </div>
                                            <div id="LoadingMoreReviewsnegative" style="display: none"
                                                 class="loading_more_reviews">
                                                <img src="https://store.akamai.steamstatic.com/public/shared/images/throbber.gif"
                                                     class="loading_more_reviews_throbber">
                                                Loading reviews...
                                            </div>
                                            <div id="LoadingMoreReviewsfunny" style="display: none"
                                                 class="loading_more_reviews">
                                                <img src="https://store.akamai.steamstatic.com/public/shared/images/throbber.gif"
                                                     class="loading_more_reviews_throbber">
                                                Loading reviews...
                                            </div>


                                            <div id="Reviews_positive" style="display: none"
                                                 class="user_reviews_container leftcol"></div>
                                            <div id="Reviews_negative" style="display: none"
                                                 class="user_reviews_container leftcol"></div>
                                            <div id="Reviews_recent" style="display: none"
                                                 class="user_reviews_container leftcol"></div>
                                            <div id="Reviews_funny" style="display: none"
                                                 class="user_reviews_container leftcol"></div>
                                            <div id="Reviews_all" style="display: none"
                                                 class="user_reviews_container leftcol"></div>
                                            <div id="Reviews_summary" class="user_reviews_container">
                                                <div>

                                                    <div class="leftcol">
                                                    </div>
                                                    <div class="rightcol recent_reviews">
                                                    </div>
                                                    <div style="clear:left;"></div>

                                                    <div id="ViewAllReviewssummary" class="view_all_reviews_btn leftcol">
                                                        <div class="review_box">
                                                            <div class="noReviewsYetTitle">There are no more reviews that
                                                                match the filters set above</div>
                                                            <div class="noReviewsYetSub">Adjust the filters above to see
                                                                other reviews</div>
                                                            <div style="clear: left; height: 40px;"></div>
                                                        </div>
                                                    </div>

                                                    <div style="clear: both"></div>
                                                </div>
                                            </div>
                                            <div id="Reviews_loading" class="user_reviews_container">
                                                <div class="LoadingWrapper">
                                                    <div class="LoadingThrobber">
                                                        <div class="Bar Bar1"></div>
                                                        <div class="Bar Bar2"></div>
                                                        <div class="Bar Bar3"></div>
                                                    </div>
                                                    <div class="LoadingText">Loading reviews...</div>
                                                </div>
                                            </div>
                                            <div style="clear: left"></div>

                                        </div>
                                    </div>
                                </div>

                                <div id="reviewSettingsPopupCtn" style="display: none;">
                                    <div id="reviewSettingsPopupContent" class="review_settings_popup_content">
                                        <div class="review_settings_popup_header">
                                            <div>Review Filters</div>
                                            <div onclick="CloseReviewSettingsModal();"><img
                                                    src="https://store.akamai.steamstatic.com/public/images/v6/close_btn.png" />
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>

                            <div data-panel="{&quot;maintainY&quot;:true,&quot;bFocusRingRoot&quot;:true,&quot;onMoveDown&quot;:&quot;BlockMovement&quot;,&quot;onMoveUp&quot;:&quot;BlockMovement&quot;,&quot;flow-children&quot;:&quot;column&quot;}"
                                 id="purchaseOptionsContentTablet" class="purchase_options_content_tablet"
                                 style="display: none;">

                                <!-- game_area_purchase goes here -->
                            </div>
                        </div>
                    </div>
                    <div class="hover game_hover" id="global_hover" style="display: none; left: 0; top: 0;">
                        <div class="game_hover_box hover_box">
                            <div class="content" id="global_hover_content">
                            </div>
                        </div>
                        <div class="hover_arrow_left"></div>
                        <div class="hover_arrow_right"></div>
                    </div>
                    <div id="EmbedModal" style="display: none">
                        <div id="widget_create">
                            <p>You can use this widget-maker to generate a bit of HTML that can be embedded in your website
                                to easily allow customers to purchase this game on Steam.</p>

                            <p class="small">Enter up to 375 characters to add a description to your widget:</p>
                            <div class="app_embed_dialog_description">
                                <textarea name="w_text"
                                          placeholder="Stream Games is a set of mini games that Twitch Streamers can play with their viewers' interaction"
                                          maxlength="375"></textarea>
                            </div>

                            <div class="buttoncontainer">
                                <a class="btnv6_blue_hoverfade btn_medium " href="#"
                                   onclick="CreateWidget(872990); return false;"><span>Create widget</span></a>
                            </div>
                        </div>
                        <div id="widget_finished" style="display: none;">
                            <div id="widget_container"></div>

                            <p class="small">Copy and paste the HTML below into your website to make the above widget appear
                            </p>
                            <textarea id="widget_code"></textarea>
                        </div>

                    </div>

                    <div id="ShareModal" style="display: none">
                        <div class="share share_dialog"><a href="https://store.steampowered.com/share/facebook/app/872990"
                                                           target="_blank" rel="" title="Share on Facebook"><img
                                    src="https://store.akamai.steamstatic.com/public/images/social/facebook_large.png"></a><a
                                href="https://store.steampowered.com/share/twitter/app/872990" target="_blank" rel=""
                                title="Share on Twitter"><img
                                    src="https://store.akamai.steamstatic.com/public/images/social/twitter_large.png"></a><a
                                href="https://store.steampowered.com/share/reddit/app/872990" target="_blank" rel=""
                                title="Share on Reddit"><img
                                    src="https://store.akamai.steamstatic.com/public/images/social/reddit_large.png"></a>
                            <div class="share_dialog_content">
                                <label for="linkShareValue" hidden>
                                    Link to the game's store page
                                </label>
                                <textarea id="shareDialogLinkStoreLink" class="share_dialog_value"
                                          onclick="ShareDialogCopyToClipboard();"
                                          readonly />https://store.steampowered.com/app/872990/Stream_Games/</textarea>
                            </div>
                            <div id="shareDialogResult" class="share_dialog_result"></div>
                        </div>
                    </div>

                    <div id="app_tagging_modal" class="app_tag_modal nologin" style="display: none;">
                        <div class="app_tag_modal_content">
                            <div class="app_tag_modal_seperator"></div>
                            <div class="app_tag_modal_left">
                                <h2>Popular user-defined tags for this product:<span class="app_tag_modal_tooltip"
                                                                                     data-tooltip-text="These are tags applied to the product by the most users.  You can click a tag to find other products with that tag applied.  Or, you can hit the plus symbol for any existing tags to increase that tag's popularity on this product.">(?)</span>
                                </h2>
                                <div class="app_tags popular_tags">
                                </div>
                            </div>
                            <div class="app_tag_modal_right">
                                <h2>Sign In</h2>
                                <p>Sign in to add your own tags to this product.</p>
                                <p>
                                    <a class="btnv6_blue_hoverfade btn_medium"
                                       href="https://store.steampowered.com/login/?redir=app/872990">
                                        <span>Sign In</span>
                                    </a>
                                </p>
                            </div>
                            <div style="clear: both;"></div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $J(function () {
                            InitAppTagModal(872990,
                                    [{"tagid": 492, "name": "Indie", "count": 45, "browseable": true}, {"tagid": 597, "name": "Casual", "count": 42, "browseable": true}],
                                    [],
                                    "1_5_9__410",
                                    "1_5_9__411",
                                    null,
                                    false);

                            if (typeof GDynamicStore != 'undefined')
                                GDynamicStore.FixupNamePortion();

                        });
                    </script>

                </div> <!-- responsive_page_legacy_content -->
                <!-- Footer -->
                <%@include file="footer.jsp"%>
            </div>

        </div>
    </body>
</html>

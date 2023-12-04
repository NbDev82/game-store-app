<%-- 
    Document   : header.jsp
    Created on : Oct 31, 2023, 3:48:29 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <%-- class="v6 app game_bg application responsive_page" --%>
    <body>
        <div id="global_header" data-panel="{&quot;flow-children&quot;:&quot;row&quot;}">
            <!-- Header Content -->
            <div class="content">
                <!-- Logo game Store -->
                <div class="logo">
                    <span id="logo_holder">
                        <a href="/game-store-app-v1/home">
                            <img src="assets/img/GameStore_main.png" width="140" height="70">
                        </a>
                    </span>
                </div>
                <!-- Super Navbar Conatiner -->
                <div class="supernav_container">
                    <a class="menuitem supernav supernav_active" href="#" data-tooltip-type="selector"
                       data-tooltip-content=".submenu_store">
                        STORE </a>
                    <div class="submenu_store" style="display: none;" data-submenuid="store">
                        <a class="submenuitem" href="/home">
                            <!-- Comeback Home -->
                            Home
                        </a>
                        <a class="submenuitem" href="#">
                            Discovery Queue
                        </a>
                        <a class="submenuitem" href="#">Wishlist</a>
                        <a class="submenuitem" href="#">Points
                            Shop</a>
                        <a class="submenuitem" href="#">News</a>
                        <a class="submenuitem" href="#">Stats</a>
                        <c:choose>
                            <c:when test="${acc !=null}">
                                <a class="submenuitem" href="#">About</a>
                            </c:when>
                            <c:otherwise>
                                <!--chưa đăng nhập-->
                            </c:otherwise>
                        </c:choose>
                    </div>

                    <a class="menuitem supernav " style="display: block" href="#" data-tooltip-type="selector"
                       data-tooltip-content=".submenu_community">
                        COMMUNITY </a>
                    <div class="submenu_community" style="display: none;" data-submenuid="community">
                        <!-- Come back Home  -->
                        <a class="submenuitem" href="#">Home</a>
                        <a class="submenuitem" href="#">Discussions</a>
                        <a class="submenuitem" href="#">Workshop</a>
                        <a class="submenuitem" href="#">Market</a>
                        <a class="submenuitem" href="#">Broadcasts</a>
                    </div>

                    <c:choose>
                        <c:when test="${acc != null}">
                            <a class="menuitem supernav username persona_name_text_content " href="#"
                               data-tooltip-type="selector" data-tooltip-content=".submenu_username">
                                ${acc.userName} </a>
                            <div class="submenu_username" style="display: none;" data-submenuid="username">
                                <a class="submenuitem" href="#">Activity</a>
                                <a class="submenuitem" href="#">Profile</a>
                                <a class="submenuitem" href="#">Friends</a>
                                <a class="submenuitem" href="#">Games</a>
                                <a class="submenuitem" href="#">Groups</a>
                                <a class="submenuitem" href="#">Content</a>
                                <a class="submenuitem" href="#">Badges</a>
                                <a class="submenuitem" href="#">Inventory</a>
                            </div>
                            <a class="menuitem" href="#">
                                Chat </a>
                            </c:when>
                            <c:otherwise>
                            <a class="menuitem " href="#">
                                About </a>
                            </c:otherwise>
                        </c:choose>
                    <!--general-->
                    <a class="menuitem " href="#">
                        SUPPORT </a>
                </div>
                <!-- Script for Header -->
                <script type="text/javascript">
                    jQuery(function ($) {
                        $('#global_header .supernav').v_tooltip({
                            'location': 'bottom',
                            'destroyWhenDone': false,
                            'tooltipClass': 'supernav_content',
                            'offsetY': -6,
                            'offsetX': 1,
                            'horizontalSnap': 4,
                            'tooltipParent': '#global_header .supernav_container',
                            'correctForScreenSize': false
                        });
                    });
                </script>
                <!--  Action mode -->
                <div id="global_actions">
                    <div id="global_action_menu">
                        <!-- Come to Install Page -->
                        <c:choose>
                            <c:when test="${acc != null}">
                                <a class="header_installsteam_btn header_installsteam_btn_gray" href="#">
                                    <div class="header_installsteam_btn_content">
                                        Install GameStore
                                    </div>
                                </a>
                                <div id="header_notification_area" style="position:relative">
                                    <div data-featuretarget="green-envelope"></div>
                                    <script type="text/javascript">$J(EnableNotificationCountPolling);</script>
                                    <div id="header_notification_link"
                                         class="header_notification_btn global_header_toggle_button header_notification_bell">
                                    </div>
                                </div>
                                <!--User name-->
                                <span class="pulldown global_action_link persona_name_text_content" id="account_pulldown"
                                      onclick="ShowMenu(this, 'account_dropdown', 'right', 'bottom', true);">
                                    ${acc.userName}
                                </span>
                                <!--hidden control User-->
                                <div class="popup_block_new" id="account_dropdown" style="display: none;">
                                    <div class="popup_body popup_menu">
                                        <a class="popup_menu_item" href="/game-store-app-v1/profiles?action=viewProfile">View my
                                            profile</a>
                                        <!-- User Name  -->
                                        <a class="popup_menu_item" href="#">Account
                                            details: <span class="account_name">${acc.userName}</span>
                                        </a>
                                        <a class="popup_menu_item" href="#">Store
                                            preferences</a>

                                        <span class="popup_menu_item" id="account_language_pulldown">Change language</span>
                                        <div class="popup_block_new" id="language_dropdown" style="display: none;">
                                            <div class="popup_body popup_menu">
                                                <a class="popup_menu_item tight" href="?l=schinese"
                                                   onclick="ChangeLanguage('schinese');
                                                   return false;">简体中文 (Simplified
                                                    Chinese)</a>
                                                <a class="popup_menu_item tight" href="?l=tchinese"
                                                   onclick="ChangeLanguage('tchinese');
                                                   return false;">繁體中文 (Traditional
                                                    Chinese)</a>
                                                <a class="popup_menu_item tight" href="?l=japanese"
                                                   onclick="ChangeLanguage('japanese'); return false;">日本語 (Japanese)</a>
                                                <a class="popup_menu_item tight" href="?l=koreana"
                                                   onclick="ChangeLanguage('koreana'); return false;">한국어 (Korean)</a>
                                                <a class="popup_menu_item tight" href="?l=thai"
                                                   onclick="ChangeLanguage('thai'); return false;">ไทย (Thai)</a>
                                                <a class="popup_menu_item tight" href="?l=bulgarian"
                                                   onclick="ChangeLanguage('bulgarian'); return false;">Български
                                                    (Bulgarian)</a>
                                                <a class="popup_menu_item tight" href="?l=czech"
                                                   onclick="ChangeLanguage('czech'); return false;">Čeština (Czech)</a>
                                                <a class="popup_menu_item tight" href="?l=danish"
                                                   onclick="ChangeLanguage('danish'); return false;">Dansk (Danish)</a>
                                                <a class="popup_menu_item tight" href="?l=german"
                                                   onclick="ChangeLanguage('german'); return false;">Deutsch (German)</a>
                                                <a class="popup_menu_item tight" href="?l=english"
                                                   onclick="ChangeLanguage('english'); return false;">English</a>
                                                <a class="popup_menu_item tight" href="?l=spanish"
                                                   onclick="ChangeLanguage('spanish'); return false;">Español - España
                                                    (Spanish - Spain)</a>
                                                <a class="popup_menu_item tight" href="?l=latam"
                                                   onclick="ChangeLanguage('latam'); return false;">Español -
                                                    Latinoamérica (Spanish - Latin America)</a>
                                                <a class="popup_menu_item tight" href="?l=greek"
                                                   onclick="ChangeLanguage('greek'); return false;">Ελληνικά (Greek)</a>
                                                <a class="popup_menu_item tight" href="?l=french"
                                                   onclick="ChangeLanguage('french'); return false;">Français
                                                    (French)</a>
                                                <a class="popup_menu_item tight" href="?l=italian"
                                                   onclick="ChangeLanguage('italian'); return false;">Italiano
                                                    (Italian)</a>
                                                <a class="popup_menu_item tight" href="?l=indonesian"
                                                   onclick="ChangeLanguage('indonesian'); return false;">Bahasa Indonesia
                                                    (Indonesian)</a>
                                                <a class="popup_menu_item tight" href="?l=hungarian"
                                                   onclick="ChangeLanguage('hungarian'); return false;">Magyar
                                                    (Hungarian)</a>
                                                <a class="popup_menu_item tight" href="?l=dutch"
                                                   onclick="ChangeLanguage('dutch'); return false;">Nederlands
                                                    (Dutch)</a>
                                                <a class="popup_menu_item tight" href="?l=norwegian"
                                                   onclick="ChangeLanguage('norwegian'); return false;">Norsk
                                                    (Norwegian)</a>
                                                <a class="popup_menu_item tight" href="?l=polish"
                                                   onclick="ChangeLanguage('polish'); return false;">Polski (Polish)</a>
                                                <a class="popup_menu_item tight" href="?l=portuguese"
                                                   onclick="ChangeLanguage('portuguese'); return false;">Português
                                                    (Portuguese - Portugal)</a>
                                                <a class="popup_menu_item tight" href="?l=brazilian"
                                                   onclick="ChangeLanguage('brazilian'); return false;">Português -
                                                    Brasil (Portuguese - Brazil)</a>
                                                <a class="popup_menu_item tight" href="?l=romanian"
                                                   onclick="ChangeLanguage('romanian'); return false;">Română
                                                    (Romanian)</a>
                                                <a class="popup_menu_item tight" href="?l=russian"
                                                   onclick="ChangeLanguage('russian'); return false;">Русский
                                                    (Russian)</a>
                                                <a class="popup_menu_item tight" href="?l=finnish"
                                                   onclick="ChangeLanguage('finnish'); return false;">Suomi (Finnish)</a>
                                                <a class="popup_menu_item tight" href="?l=swedish"
                                                   onclick="ChangeLanguage('swedish');
                                                   return false;">Svenska
                                                    (Swedish)</a>
                                                <a class="popup_menu_item tight" href="?l=turkish"
                                                   onclick="ChangeLanguage('turkish'); return false;">Türkçe
                                                    (Turkish)</a>
                                                <a class="popup_menu_item tight" href="?l=vietnamese"
                                                   onclick="ChangeLanguage('vietnamese'); return false;">Tiếng Việt
                                                    (Vietnamese)</a>
                                                <a class="popup_menu_item tight" href="?l=ukrainian"
                                                   onclick="ChangeLanguage('ukrainian'); return false;">Українська
                                                    (Ukrainian)</a>
                                                <a class="popup_menu_item tight" href="#" target="_blank">
                                                    Report a translation problem </a>
                                            </div>
                                        </div>
                                        <!-- Sign out -> return header no login -->
                                        <a class="popup_menu_item" href="logAcc?action=logout">Sign out of account...</a>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    RegisterFlyout('account_language_pulldown', 'language_dropdown', 'leftsubmenu', 'bottomsubmenu', true);
                                </script>
                            </c:when>
                            <c:otherwise>
                                <a class="header_installsteam_btn header_installsteam_btn_green" href="#">
                                    <div class="header_installsteam_btn_content">
                                        Install GameStore
                                    </div>
                                </a>
                                <!-- Comback Login Page -->
                                <a class="global_action_link" href="login.jsp">login</a>

                                &nbsp;|&nbsp;
                                <span class="pulldown global_action_link" id="language_pulldown"
                                      onclick="ShowMenu(this, 'language_dropdown', 'right');">language</span>
                                <div class="popup_block_new" id="language_dropdown" style="display: none;">
                                    <div class="popup_body popup_menu">
                                        <a class="popup_menu_item tight" href="?l=schinese"
                                           onclick="ChangeLanguage('schinese');
                                           return false;">简体中文 (Simplified
                                            Chinese)</a>
                                        <a class="popup_menu_item tight" href="?l=tchinese"
                                           onclick="ChangeLanguage('tchinese'); return false;">繁體中文 (Traditional
                                            Chinese)</a>
                                        <a class="popup_menu_item tight" href="?l=japanese"
                                           onclick="ChangeLanguage('japanese'); return false;">日本語 (Japanese)</a>
                                        <a class="popup_menu_item tight" href="?l=koreana"
                                           onclick="ChangeLanguage('koreana'); return false;">한국어 (Korean)</a>
                                        <a class="popup_menu_item tight" href="?l=thai"
                                           onclick="ChangeLanguage('thai'); return false;">ไทย (Thai)</a>
                                        <a class="popup_menu_item tight" href="?l=bulgarian"
                                           onclick="ChangeLanguage('bulgarian'); return false;">Български (Bulgarian)</a>
                                        <a class="popup_menu_item tight" href="?l=czech"
                                           onclick="ChangeLanguage('czech'); return false;">Čeština (Czech)</a>
                                        <a class="popup_menu_item tight" href="?l=danish"
                                           onclick="ChangeLanguage('danish'); return false;">Dansk (Danish)</a>
                                        <a class="popup_menu_item tight" href="?l=german"
                                           onclick="ChangeLanguage('german'); return false;">Deutsch (German)</a>
                                        <a class="popup_menu_item tight" href="?l=spanish"
                                           onclick="ChangeLanguage('spanish'); return false;">Español - España (Spanish -
                                            Spain)</a>
                                        <a class="popup_menu_item tight" href="?l=latam"
                                           onclick="ChangeLanguage('latam'); return false;">Español - Latinoamérica
                                            (Spanish - Latin America)</a>
                                        <a class="popup_menu_item tight" href="?l=greek"
                                           onclick="ChangeLanguage('greek'); return false;">Ελληνικά (Greek)</a>
                                        <a class="popup_menu_item tight" href="?l=french"
                                           onclick="ChangeLanguage('french'); return false;">Français (French)</a>
                                        <a class="popup_menu_item tight" href="?l=italian"
                                           onclick="ChangeLanguage('italian'); return false;">Italiano (Italian)</a>
                                        <a class="popup_menu_item tight" href="?l=indonesian"
                                           onclick="ChangeLanguage('indonesian'); return false;">Bahasa Indonesia
                                            (Indonesian)</a>
                                        <a class="popup_menu_item tight" href="?l=hungarian"
                                           onclick="ChangeLanguage('hungarian'); return false;">Magyar (Hungarian)</a>
                                        <a class="popup_menu_item tight" href="?l=dutch"
                                           onclick="ChangeLanguage('dutch'); return false;">Nederlands (Dutch)</a>
                                        <a class="popup_menu_item tight" href="?l=norwegian"
                                           onclick="ChangeLanguage('norwegian'); return false;">Norsk (Norwegian)</a>
                                        <a class="popup_menu_item tight" href="?l=polish"
                                           onclick="ChangeLanguage('polish'); return false;">Polski (Polish)</a>
                                        <a class="popup_menu_item tight" href="?l=portuguese"
                                           onclick="ChangeLanguage('portuguese'); return false;">Português (Portuguese -
                                            Portugal)</a>
                                        <a class="popup_menu_item tight" href="?l=brazilian"
                                           onclick="ChangeLanguage('brazilian');
                                           return false;">Português - Brasil
                                            (Portuguese - Brazil)</a>
                                        <a class="popup_menu_item tight" href="?l=romanian"
                                           onclick="ChangeLanguage('romanian'); return false;">Română (Romanian)</a>
                                        <a class="popup_menu_item tight" href="?l=russian"
                                           onclick="ChangeLanguage('russian'); return false;">Русский (Russian)</a>
                                        <a class="popup_menu_item tight" href="?l=finnish"
                                           onclick="ChangeLanguage('finnish'); return false;">Suomi (Finnish)</a>
                                        <a class="popup_menu_item tight" href="?l=swedish"
                                           onclick="ChangeLanguage('swedish'); return false;">Svenska (Swedish)</a>
                                        <a class="popup_menu_item tight" href="?l=turkish"
                                           onclick="ChangeLanguage('turkish'); return false;">Türkçe (Turkish)</a>
                                        <a class="popup_menu_item tight" href="?l=vietnamese"
                                           onclick="ChangeLanguage('vietnamese'); return false;">Tiếng Việt
                                            (Vietnamese)</a>
                                        <a class="popup_menu_item tight" href="?l=ukrainian"
                                           onclick="ChangeLanguage('ukrainian'); return false;">Українська
                                            (Ukrainian)</a>
                                        <a class="popup_menu_item tight"
                                           href="https://www.valvesoftware.com/en/contact?contact-person=Translation%20Team%20Feedback"
                                           target="_blank">Report a translation problem</a>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

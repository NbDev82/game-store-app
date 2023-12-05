<%-- 
    Document   : category
    Created on : Nov 25, 2023, 8:13:05 PM
    Author     : HP
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="theme-color" content="#171a21">
        <title>Steam Search</title>
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
        <link
            href="https://store.cloudflare.steamstatic.com/public/shared/css/motiva_sans.css?v=2C1Oh9QFVTyK&amp;l=english&amp;_cdn=cloudflare"
            rel="stylesheet" type="text/css">
        <link
            href="https://store.cloudflare.steamstatic.com/public/shared/css/shared_global.css?v=9W9LHJeR779e&amp;l=english&amp;_cdn=cloudflare"
            rel="stylesheet" type="text/css">
        <link
            href="https://store.cloudflare.steamstatic.com/public/shared/css/buttons.css?v=hFJKQ6HV7IKT&amp;l=english&amp;_cdn=cloudflare"
            rel="stylesheet" type="text/css">
        <link
            href="https://store.cloudflare.steamstatic.com/public/css/v6/store.css?v=N276qw46gD18&amp;l=english&amp;_cdn=cloudflare"
            rel="stylesheet" type="text/css">
        <link
            href="https://store.cloudflare.steamstatic.com/public/css/v6/browse.css?v=wWw5tW1y7nea&amp;l=english&amp;_cdn=cloudflare"
            rel="stylesheet" type="text/css">
        <link
            href="https://store.cloudflare.steamstatic.com/public/css/v6/search.css?v=CmbU1MkT7S1v&amp;l=english&amp;_cdn=cloudflare"
            rel="stylesheet" type="text/css">
        <link
            href="https://store.cloudflare.steamstatic.com/public/shared/css/shared_responsive.css?v=CG8Em6e-Ozq3&amp;l=english&amp;_cdn=cloudflare"
            rel="stylesheet" type="text/css">
        <script type="text/javascript"
        src="https://store.cloudflare.steamstatic.com/public/shared/javascript/jquery-1.8.3.min.js?v=.TZ2NKhB-nliU&amp;_cdn=cloudflare"></script>
        <script type="text/javascript">$J = jQuery.noConflict();</script>
        <script type="text/javascript">VALVE_PUBLIC_PATH = "https:\/\/store.cloudflare.steamstatic.com\/public\/";</script>
        <script type="text/javascript"
        src="https://store.cloudflare.steamstatic.com/public/shared/javascript/tooltip.js?v=.zYHOpI1L3Rt0&amp;_cdn=cloudflare"></script>

        <script type="text/javascript"
        src="https://store.cloudflare.steamstatic.com/public/shared/javascript/shared_global.js?v=joUly9uZoJX_&amp;l=english&amp;_cdn=cloudflare"></script>

        <script type="text/javascript"
        src="https://store.cloudflare.steamstatic.com/public/javascript/main.js?v=aVwmJL6U2Amu&amp;l=english&amp;_cdn=cloudflare"></script>

        <script type="text/javascript"
        src="https://store.cloudflare.steamstatic.com/public/javascript/dynamicstore.js?v=zT0Cl5vv5AfQ&amp;l=english&amp;_cdn=cloudflare"></script>

        <script type="text/javascript">
            var __PrototypePreserve = [];
            __PrototypePreserve[0] = Array.from;
            __PrototypePreserve[1] = Array.prototype.filter;
            __PrototypePreserve[2] = Array.prototype.flatMap;
            __PrototypePreserve[3] = Array.prototype.find;
            __PrototypePreserve[4] = Array.prototype.some;
            __PrototypePreserve[5] = Function.prototype.bind;
            __PrototypePreserve[6] = HTMLElement.prototype.scrollTo;
        </script>
        <script type="text/javascript"
        src="https://store.cloudflare.steamstatic.com/public/javascript/prototype-1.7.js?v=.a38iP7Khdmyy&amp;_cdn=cloudflare"></script>
        <script type="text/javascript">
            Array.from = __PrototypePreserve[0] || Array.from;
            Array.prototype.filter = __PrototypePreserve[1] || Array.prototype.filter;
            Array.prototype.flatMap = __PrototypePreserve[2] || Array.prototype.flatMap;
            Array.prototype.find = __PrototypePreserve[3] || Array.prototype.find;
            Array.prototype.some = __PrototypePreserve[4] || Array.prototype.some;
            Function.prototype.bind = __PrototypePreserve[5] || Function.prototype.bind;
            HTMLElement.prototype.scrollTo = __PrototypePreserve[6] || HTMLElement.prototype.scrollTo;
        </script>
        <script type="text/javascript">
            var __ScriptaculousPreserve = [];
            __ScriptaculousPreserve[0] = Array.from;
            __ScriptaculousPreserve[1] = Function.prototype.bind;
            __ScriptaculousPreserve[2] = HTMLElement.prototype.scrollTo;
        </script>
        <script type="text/javascript"
        src="https://store.cloudflare.steamstatic.com/public/javascript/scriptaculous/_combined.js?v=Me1IBxzktiwk&amp;l=english&amp;_cdn=cloudflare&amp;load=effects,controls,slider"></script>
        <script type="text/javascript">
            Array.from = __ScriptaculousPreserve[0] || Array.from;
            Function.prototype.bind = __ScriptaculousPreserve[1] || Function.prototype.bind;
            HTMLElement.prototype.scrollTo = __ScriptaculousPreserve[2] || HTMLElement.prototype.scrollTo;
        </script>
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
        src="https://store.cloudflare.steamstatic.com/public/shared/javascript/dselect.js?v=sjouo3-33Gox&amp;l=english&amp;_cdn=cloudflare"></script>
        <script type="text/javascript"
        src="https://store.cloudflare.steamstatic.com/public/javascript/searchpage.js?v=HcOV6zjiN_eu&amp;l=english&amp;_cdn=cloudflare"></script>
        <script type="text/javascript"
        src="https://store.cloudflare.steamstatic.com/public/javascript/jquery.filter.js?v=.UsxvqYeHZ01h&amp;_cdn=cloudflare"></script>
        <script type="text/javascript"
        src="https://store.cloudflare.steamstatic.com/public/shared/javascript/shared_responsive_adapter.js?v=pSvIAKtunfWg&amp;l=english&amp;_cdn=cloudflare"></script>

        <meta name="twitter:card" content="summary_large_image">

        <meta name="twitter:site" content="@steam" />

        <meta property="og:title" content="Steam Search">
        <meta property="twitter:title" content="Steam Search">
        <meta property="og:type" content="website">
        <meta property="fb:app_id" content="105386699540688">
        <meta property="og:site" content="Steam">


        <link rel="image_src"
              href="https://store.cloudflare.steamstatic.com/public/shared/images/responsive/share_steam_logo.png">
        <meta property="og:image"
              content="https://store.cloudflare.steamstatic.com/public/shared/images/responsive/share_steam_logo.png">
        <meta name="twitter:image"
              content="https://store.cloudflare.steamstatic.com/public/shared/images/responsive/share_steam_logo.png" />
        <meta property="og:image:secure"
              content="https://store.cloudflare.steamstatic.com/public/shared/images/responsive/share_steam_logo.png">
        <script>
            function redirectToHomeServlet() {
                window.location.href = '<c:url value="/home"/>';}
        </script>
    </head>
    <body class="v6 search_page responsive_page">
        <div class="responsive_page_frame with_header">
            <div class="responsive_page_menu_ctn mainmenu">
                <div class="responsive_page_menu" id="responsive_page_menu">
                    <div class="mainmenu_contents">
                        <div class="mainmenu_contents_items">
                            <a class="menuitem"
                               href="https://store.steampowered.com/login/?redir=search%2F%3Fterm%3DOutlast&redir_ssl=1&snr=1_7_7_151_global-header">
                                Login </a>
                            <a class="menuitem supernav supernav_active"
                               href="https://store.steampowered.com/?snr=1_7_7_151_global-responsive-menu"
                               data-tooltip-type="selector" data-tooltip-content=".submenu_store">
                                Store </a>
                            <div class="submenu_store" style="display: none;" data-submenuid="store">
                                <a class="submenuitem"
                                   href="https://store.steampowered.com/?snr=1_7_7_151_global-responsive-menu">Home</a>
                                <a class="submenuitem"
                                   href="https://store.steampowered.com/explore/?snr=1_7_7_151_global-responsive-menu">Discovery
                                    Queue</a>
                                <a class="submenuitem" href="https://steamcommunity.com/my/wishlist/">Wishlist</a>
                                <a class="submenuitem"
                                   href="https://store.steampowered.com/points/shop/?snr=1_7_7_151_global-responsive-menu">Points
                                    Shop</a>
                                <a class="submenuitem"
                                   href="https://store.steampowered.com/news/?snr=1_7_7_151_global-responsive-menu">News</a>
                                <a class="submenuitem"
                                   href="https://store.steampowered.com/stats/?snr=1_7_7_151_global-responsive-menu">Stats</a>
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
                                    src="https://store.cloudflare.steamstatic.com/public/shared/images/responsive/logo_valve_footer.png">
                            </div>
                            © Valve Corporation. All rights reserved. All trademarks are property of their respective owners
                            in the US and other countries. <span class="mainmenu_valve_links">
                                <a href="https://store.steampowered.com/privacy_agreement/?snr=1_7_7_151_global-responsive-menu"
                                   target="_blank">Privacy Policy</a>
                                &nbsp;| &nbsp;<a href="http://www.valvesoftware.com/legal.htm" target="_blank">Legal</a>
                                &nbsp;| &nbsp;<a
                                    href="https://store.steampowered.com/subscriber_agreement/?snr=1_7_7_151_global-responsive-menu"
                                    target="_blank">Steam Subscriber Agreement</a>
                                &nbsp;| &nbsp;<a
                                    href="https://store.steampowered.com/steam_refunds/?snr=1_7_7_151_global-responsive-menu"
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
                        <img src="https://store.cloudflare.steamstatic.com/public/shared/images/responsive/header_menu_hamburger.png"
                             height="100%">
                    </div>
                    <div class="responsive_header_logo">
                        <a href="https://store.steampowered.com/?snr=1_7_7_151_global-responsive-menu">
                            <img src="https://store.cloudflare.steamstatic.com/public/shared/images/responsive/header_logo.png"
                                 height="36" style="border:0" alt="STEAM">
                        </a>
                    </div>
                </div>
            </div>
            <div class="responsive_page_content_overlay"></div>
            <div class="responsive_fixonscroll_ctn nonresponsive_hidden "></div>

            <div class="responsive_page_content">
                <%@include file="header.jsp" %>

                <div id="responsive_store_nav_ctn"></div>
                <div id="responsive_store_nav_overlay" style="display:none">
                    <div id="responsive_store_nav_overlay_ctn"></div>
                    <div id="responsive_store_nav_overlay_bottom"></div>
                </div>
                <div id="responsive_store_search_overlay" style="display:none"></div>
                <div data-cart-banner-spot="1"></div>
                <div class="responsive_page_template_content" id="responsive_page_template_content"
                     data-panel="{&quot;autoFocus&quot;:true}">
                    <script type="text/javascript">
                        jQuery(document).ready(function ($) {
                            // when we create the responsive right column menu, it moves several hidden inputs out of the form which breaks searching, so
                            //	we reparent any hidden inputs in the right column to a spot at the bottom of the form with other hidden elements.
                            // this selector only works once, so after moving from responsive to desktop mode the elements will stay in the hidden searchform area, but that's ok.
                            //	they work just as well from there.
                            Responsive_ReparentItemsInResponsiveMode('#additional_search_options input[type=hidden]', $J('#hidden_searchform_elements'));
                            var bInfiniScroll = true;
                            var nItemCount = 213;

                            if (nItemCount > 0 && bInfiniScroll) {
                                InitInfiniteScroll.bEnabled = true;
                                InitInfiniteScroll.nScrollSize = 50;
                            }
                            InitSearchPage();
                            UpdateTags();
                            InitAutocollapse();
                            // Handle our user hitting 'back' cleanly. This needs to trigger after the Dynamic
                            // Store has finished, or (if no dynamic store) just after the page renders.
                            //
                            // Dynamic Store will trigger its OnReady immediately if it's already complete.
                            if (GDynamicStore)
                                GDynamicStore.OnReady(function () {
                                    setTimeout(HandleBackReposition, 500)
                                });
                            else
                                window.addEventListener('load', function () {
                                    setTimeout(HandleBackReposition, 500)
                                });

                            // in the react native mobile app show the filter menu button next to the sort drop-down, and the croutons below those controls
                        });
                    </script>
                    <div class="page_header_ctn search "
                         data-panel="{&quot;noFocusRing&quot;:true,&quot;onOptionsActionDescription&quot;:&quot;Filter&quot;,&quot;onOptionsButton&quot;:&quot;Responsive_ToggleLocalMenu();&quot;}">
                        <%@include file="tag.jsp"%>
                        <div class="page_content">
                            <div class="breadcrumbs"></div>
                            <h2 class="pageheader full">
                            </h2>
                            <div class="termcontainer">
                                <div id="termsnone">
                                    <div class="pagesubheader">All Products</div>
                                </div>
                                <div class="searchtag" id="searchtag_tmpl" style="display: none">
                                    <img
                                        class="search_crouton_icon" />
                                    <span class="label"></span> 
                                    <a href="#" class="btn"></a></div>
                            </div>
                        </div>
                    </div>
<!--                        /game-store-app-v1/search/-->
                    <form action="search" id="advsearchform" name="advsearchform"
                          onSubmit="AjaxSearchResults(); return false;" method="POST">
                        <!--Main background-->
                        <div class="page_content_ctn"
                             data-panel="{&quot;noFocusRing&quot;:true,&quot;onOptionsActionDescription&quot;:&quot;Filter&quot;,&quot;onOptionsButton&quot;:&quot;Responsive_ToggleLocalMenu();&quot;}">
                            <!--Main content-->
                            <div class="page_content" data-gpnav="columns">
                                <div class="leftcol large" data-gpnav="rows">

                                    <div class="searchbar" data-gpnav="columns">
                                        <div class="sortbox">
                                            <div class="label">Sort by</div>
                                            <div class="dselect_container" id="sort_by_dselect_container">
                                                <input id="sort_by" type="hidden" name="sort_by" value="_ASC"
                                                       onchange="$J('sort_by').val(this.value); AjaxSearchResults();" />
                                                <a class="trigger" id="sort_by_trigger" href="javascript:DSelectNoop();"
                                                   onfocus="DSelectOnFocus('sort_by');"
                                                   onblur="DSelectOnBlur('sort_by');"
                                                   onclick="DSelectOnTriggerClick('sort_by');">Relevance</a>
                                                <div class="dropcontainer" id="sort_by_listctn">
                                                    <ul class="dropdownhidden" id="sort_by_droplist"
                                                        data-panel="{&quot;bFocusRingRoot&quot;:true,&quot;onCancelButton&quot;:&quot;DSelectHide( 'sort_by')&quot;,&quot;flow-children&quot;:&quot;column&quot;}""><li >
                                                            <a data-panel="                                                                                                                                    onclick="DHighlightItem('sort_by', 0, true);">Relevance</a></li>
                                                        <li><a data-panel="{&quot;noFocusRing&quot;:true}"
                                                               class="inactive_selection" tabindex="99999"
                                                               href="javascript:DSelectNoop();"
                                                               onmouseover="DHighlightItem('sort_by', 1, false);"
                                                               id="Released_DESC"
                                                               onclick="DHighlightItem('sort_by', 1, true);">Release
                                                                date</a></li>
                                                        <li><a data-panel="{&quot;noFocusRing&quot;:true}"
                                                               class="inactive_selection" tabindex="99999"
                                                               href="javascript:DSelectNoop();"
                                                               onmouseover="DHighlightItem('sort_by', 2, false);"
                                                               id="Name_ASC"
                                                               onclick="DHighlightItem('sort_by', 2, true);">Name</a>
                                                        </li>
                                                        <li><a data-panel="{&quot;noFocusRing&quot;:true}"
                                                               class="inactive_selection" tabindex="99999"
                                                               href="javascript:DSelectNoop();"
                                                               onmouseover="DHighlightItem('sort_by', 3, false);"
                                                               id="Price_ASC"
                                                               onclick="DHighlightItem('sort_by', 3, true);">Lowest
                                                                Price</a></li>
                                                        <li><a data-panel="{&quot;noFocusRing&quot;:true}"
                                                               class="inactive_selection" tabindex="99999"
                                                               href="javascript:DSelectNoop();"
                                                               onmouseover="DHighlightItem('sort_by', 4, false);"
                                                               id="Price_DESC"
                                                               onclick="DHighlightItem('sort_by', 4, true);">Highest
                                                                Price</a></li>
                                                        <li><a data-panel="{&quot;noFocusRing&quot;:true}"
                                                               class="inactive_selection" tabindex="99999"
                                                               href="javascript:DSelectNoop();"
                                                               onmouseover="DHighlightItem('sort_by', 5, false);"
                                                               id="Reviews_DESC"
                                                               onclick="DHighlightItem('sort_by', 5, true);">User
                                                                Reviews</a></li>
                                                        <li><a data-panel="{&quot;noFocusRing&quot;:true}"
                                                               class="inactive_selection" tabindex="99999"
                                                               href="javascript:DSelectNoop();"
                                                               onmouseover="DHighlightItem('sort_by', 6, false);"
                                                               id="DeckCompatDate_DESC"
                                                               onclick="DHighlightItem('sort_by', 6, true);">Store Game Deck
                                                                Compatibility Review Date</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <script
                                                language="javascript">$J(function () {
                                                        $J('#sort_by_dselect_container').on('keydown', HandleKeyDown);
                                                    });</script>
                                        </div>
                                        <div class="searchbar_left">
                                            
                                                <input type="text" class="text"
                                                       id="term" name="txt" 
                                                         maxlength="64">
                                                
                                                <input type="hidden" name="term" id="realterm" value="outlast">
                                                <input type="hidden" name="hide_filtered_results_warning"
                                                       id="hide_filtered_results_warning" value="">
                                                <input type="hidden" name="ignore_preferences" id="ignore_preferences" value="">
                                                <input type="hidden" name="force_infinite" id="force_infinite" value=""
                                                       autocomplete="off" />
                                                <button type="submit" class="btnv6_blue_hoverfade btn_small" data-gpnav="item">
                                                    <span>Search</span>
                                                </button>
                                            
                                            <div id="term_options" class="autocomplete" style="display: none;"></div>
                                        </div>
                                        <div class="clear_ctn" style="clear: both;"></div>
                                    </div>
                                    <script type="text/javascript">
                                        new Ajax.Autocompleter($('advsearchform').elements['displayterm'], 'term_options', 'https://store.steampowered.com/search/suggest', {frequency: 0.2, method: "get", paramName: 'term', parameters: 'cc=VN&realm=1&l=english&excluded_content_descriptors%5B0%5D=3&excluded_content_descriptors%5B1%5D=4', allowFreeEntry: true, afterUpdateElement: function () {
                                                $('realterm').value = $('term').value;
                                                AjaxSearchResults();
                                            }});
                                    </script>
                                    <div id="search_results_filtered_warning_persistent"
                                         class="search_results_filtered_warning collapsed"
                                         data-panel="{&quot;type&quot;:&quot;PanelGroup&quot;}"></div>
                                    <div id="search_results" class="search_results" data-gpnav="rows">
                                        <script type="text/javascript">
                                            $J(function () {
                                                PopulateTagFacetData([[21, "130"], [19, "123"], [492, "123"], [4182, "95"], [1667, "79"], [9, "64"], [1662, "62"], [3839, "62"], [597, "60"], [4166, "55"], [599, "54"], [1721, "54"], [3978, "54"], [4191, "54"], [3859, "48"], [1742, "45"], [3834, "40"], [4342, "40"], [4106, "36"], [1664, "35"], [4345, "33"], [1775, "32"], [4667, "32"], [4175, "30"], [3871, "28"]], [], false);
                                                PopulateLangFilterData(["english"], ["english"]);
                                                PopulateDeckCompatFacetData([[0, "180"], [2, "18"], [3, "9"], [1, "3"]], );
                                            });
                                        </script>
                                        <c:choose>
                                            <c:when test="${empty listGames}">
                                                <div id="search_results_filtered_warning"
                                                     class="search_results_filtered_warning collapsed important">
                                                    <div>0 results match your search.</div>
                                                    <div class="settings_tab"
                                                         data-panel="{&quot;focusable&quot;:true,&quot;clickOnActivate&quot;:true}"
                                                         onclick="redirectToHomeServlet()"> 
                                                        <!-- OnClickShowFilteredContentSettingsModal()-->
                                                    </div>
                                                </div>
                                                
                                                <script>
                                                    g_strUnfilteredURL = 'https://store.steampowered.com/search/?term=outlast&ignore_preferences=1';
                                                </script>
                                            </c:when>
                                            <c:otherwise>
                                                <div id="search_results_filtered_warning"
                                                     class="search_results_filtered_warning collapsed important">
                                                    <div>${fn:length(listGames)}  results match your search. ${fn:length(listGames)} titles have been excluded based on your
                                                        preferences.</div>
                                                  <div class="settings_tab"
                                                         data-panel="{&quot;focusable&quot;:true,&quot;clickOnActivate&quot;:true}"
                                                         onclick="redirectToHomeServlet()"> 
                                                        <!-- OnClickShowFilteredContentSettingsModal()-->
                                                    </div>
                                                </div>
                                                <script>
                                                    g_strUnfilteredURL = 'https://store.steampowered.com/search/?term=outlast&ignore_preferences=1';
                                                </script>

                                                <div id="search_result_container">
                                                    <div class="search_rule"></div>
                                                    <!-- Extra empty div to hack around IE7 layout bug -->
                                                    <div></div>
                                                    <!-- End Extra empty div -->

                                                    <div id="search_resultsRows">
                                                        <!-- List Items -->
                                                        <c:forEach items="${listGames}" var="o">
                                                            <a href="game?gameId=${o.gameId}"
                                                               data-ds-appid="238320" data-ds-itemkey="App_238320"
                                                               data-ds-tagids="[1667,3839,3978,4166,4345,1721,1662]"
                                                               data-ds-descids="[2,5]" data-ds-crtrids="[33520700]"

                                                               onmouseout="HideGameHover(this, event, 'global_hover')"
                                                               class="search_result_row ds_collapse_flag " data-search-page="1"
                                                               data-gpnav="item" data-ds-steam-deck-compat-handled="true">
                                                                <div class="col search_capsule">
                                                                    <img style="max-width: 100%; height: auto;"
                                                                        src="${o.gameimgs[0].imgLink}"
                                                                        srcset="${o.gameimgs[0].imgLink} 1x,
                                                                        ${o.gameimgs[0].imgLink} 2x">
                                                                </div>
                                                                <div class="responsive_search_name_combined">
                                                                    <div class="col search_name ellipsis">
                                                                        <span class="title">${o.gameName}</span>
                                                                        <div>
                                                                            <span class="platform_img win"></span><span
                                                                                class="platform_img mac"></span><span
                                                                                class="platform_img linux"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col search_released responsive_secondrow">
                                                                        <fmt:parseDate var="parsedDate" value="${o.releaseDate}" pattern="yyyy-MM-dd HH:mm:ss.SS" />
                                                                        <fmt:formatDate value="${parsedDate}" pattern="MMM dd, yyyy" />
                                                                    </div>



                                                                    <div class="col search_reviewscore responsive_secondrow">
                                                                        <c:choose>
                                                                            <c:when test="${o.globalReview eq 'Very Positive' || o.globalReview eq 'Positive' || 
                                                                                    o.globalReview eq 'Overwhelmingly Positive'}">
                                                                                <span class="search_review_summary positive"
                                                                                      data-tooltip-html="${o.globalReview}&lt;br&gt;${o.percentPos}% of the ${o.numbReview} user reviews for this game are positive.">
                                                                                </span>
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <c:if test="${o.globalReview eq 'Mostly Negative' || o.globalReview eq 'Negative'}">
                                                                                    <span class="search_review_summary negative"
                                                                                          data-tooltip-html="${o.globalReview}&lt;br&gt;${o.percentPos}% of the ${o.numbReview} user reviews for this game are positive.">
                                                                                </c:if>
                                                                                <c:if test="${o.globalReview eq 'Mixed'}">
                                                                                    <span class="search_review_summary mixed"
                                                                                          data-tooltip-html="${o.globalReview}&lt;br&gt;${o.percentPos}% of the ${o.numbReview} user reviews for this game are positive.">
                                                                                    </span>
                                                                                </c:if>
                                                                            </c:otherwise>
                                                                                    </c:choose>
                                                                    </div>

                                                                    <div class="col search_price_discount_combined responsive_secondrow"
                                                                         data-price-final="${o.initialPrice}">
                                                                        <div class="col search_discount_and_price responsive_secondrow">
                                                                            <c:choose>
                                                                                <c:when test="${o.initialPrice eq 0}"> 
                                                                                    <div
                                                                                        class="discount_block no_discount search_discount_block">
                                                                                        <div class="discount_prices">
                                                                                            <div class="discount_final_price free">Free</div>
                                                                                        </div>
                                                                                    </div>
                                                                                </c:when>
                                                                                <c:otherwise>
                                                                                    <c:if test="${o.isDiscount()}">
                                                                                        <div class="discount_block search_discount_block"
                                                                                             data-price-final="3900000" data-bundlediscount="0"
                                                                                             data-discount="85">
                                                                                            <div class="discount_pct">${Math.round((o.initialPrice-o.discountPrice)/o.initialPrice*100)}%</div>
                                                                                            <div class="discount_prices">
                                                                                                <div class="discount_original_price">${o.initialPrice}₫
                                                                                                </div>
                                                                                                <div class="discount_final_price">${o.discountPrice}₫</div>
                                                                                            </div>     
                                                                                        </div>
                                                                                    </c:if>
                                                                                    <c:if test="${!o.isDiscount()}">
                                                                                        <div class="discount_block search_discount_block no_discount"
                                                                                             data-price-final="${o.initialPrice}" data-bundlediscount="0"
                                                                                             data-discount="0">
                                                                                            <div class="discount_prices">
                                                                                                <div class="discount_final_price">${o.initialPrice}₫</div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </c:if>
                                                                                </c:otherwise>
                                                                            </c:choose>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                                <div style="clear: left;"></div>
                                                            </a>

                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                        <!-- End List Items -->


                                        <div class="search_pagination">
                                            <div class="search_pagination_left">
                                                showing 1 - 50 of 210 </div>
                                            <div class="search_pagination_right">
                                                1&nbsp;&nbsp; <a
                                                    href="https://store.steampowered.com/search/?sort_by=&sort_order=0&term=outlast&supportedlang=english&page=2"
                                                    onclick="SearchLinkClick(this);
                                                                return false;">2</a>
                                                &nbsp;&nbsp; <a
                                                    href="https://store.steampowered.com/search/?sort_by=&sort_order=0&term=outlast&supportedlang=english&page=3"
                                                    onclick="SearchLinkClick(this);
                                                                return false;">3</a>
                                                &nbsp;&nbsp; <a
                                                    href="https://store.steampowered.com/search/?sort_by=&sort_order=0&term=outlast&supportedlang=english&page=4"
                                                    onclick="SearchLinkClick(this);
                                                                return false;">4</a>
                                                &nbsp;&nbsp; <a
                                                    href="https://store.steampowered.com/search/?sort_by=&sort_order=0&term=outlast&supportedlang=english&page=5"
                                                    onclick="SearchLinkClick(this);
                                                                return false;">5</a>
                                                &nbsp;<a
                                                    href="https://store.steampowered.com/search/?sort_by=&sort_order=0&term=outlast&supportedlang=english&page=2"
                                                    onclick="SearchLinkClick(this); return false;"
                                                    class="pagebtn">&gt;</a>
                                            </div>
                                            <div style="clear: both;"></div>
                                        </div>

                                        <div id="search_results_loading" style="display: none">
                                            <div class="LoadingWrapper">
                                                <div class="LoadingThrobber">
                                                    <div class="Bar Bar1"></div>
                                                    <div class="Bar Bar2"></div>
                                                    <div class="Bar Bar3"></div>
                                                </div>
                                                <div class="LoadingText">Loading more content...</div>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div data-panel="{&quot;bFocusRingRoot&quot;:true,&quot;onMoveDown&quot;:&quot;BlockMovement&quot;,&quot;flow-children&quot;:&quot;column&quot;}"
                                 class="rightcol small responsive_local_menu autocollapse_enabled"
                                 id="additional_search_options" data-gpnav="rows">

                            </div>
                            <div class="clear_ctn" style="clear: both;"></div>
                        </div>                            
                </div>
                <!-- End Main Background -->
                <!-- End Main Background -->
                <div id="hidden_searchform_elements">
                    <!-- in responsive mode, the hidden right column inputs are reparented here so they are part of the form -->
                    <input type="hidden" id="search_snr_value" name="snr" value="1_7_7_151_7">
                    <input type="hidden" name="list_of_subs" value="">

                    <input type="hidden" name="specials" id="specials" value="">
                    <input type="hidden" name="hidef2p" id="hidef2p" value="">
                    <input type="hidden" name="filter" value="">
                    <input type="hidden" name="genre" value="">
                    <input type="hidden" name="salepage" value="">
                    <input type="hidden" name="publisher" id="publisher" value="">
                    <input type="hidden" name="developer" id="developer" value="">
                    <input type="hidden" name="manufacturer" id="manufacturer" value="">
                    <input type="hidden" name="franchise" id="franchise" value="">
                    <input type="hidden" id="search_current_page" name="page" value="1">
                </div>
                </form>
            </div>
            <!--footer-->
            <c:import url="footer.jsp"/>
        </div>
    </div>
</body>
</html>

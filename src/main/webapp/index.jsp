<%-- 
    Document   : index.jsp
    Created on : Oct 30, 2023, 10:58:31 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
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
        <link rel="stylesheet" href="assets/css/hombase.css">
        <link rel="stylesheet" href="assets/css/home.css">
        <script type="text/javascript" src="js/index.js"></script>
        <link rel="stylesheet" href="assets/css/home.css">
    </head>
    <body class="v6 infinite_scrolling responsive_page ">
        <form method="post" action="">
            <div class="responsive_page_frame with_header">
                <div class="responsive_page_content">
                    <!--header-->
                    <%@include file="header.jsp"%>
                    <!--container-->
                    <div class="responsive_page_template_content" id="responsive_page_template_content" >
                        <div class="home_page_col_wrapper">
                            <div class="home_page_content home_gutter_outside">
                                <!--Menu Left-->
                                <div class="home_page_gutter" style="top: 465px;">
                                    <div class="home_page_gutter_block">
                                        <a class="top_promo ds_no_flags"
                                           href="">
                                            <!-- dang ky cart--> 
                                            <div class="gutter_header gutter_top">
                                                <img class="home_page_gutter_top"
                                                     src="assets/img/GameStore_main.png"><br>
                                                GameStore Gift Cards

                                            </div>
                                            <div class="promo_text">
                                                Give the Gift of Game </div>
                                        </a>
                                        <div class="gutter_header">Recommended</div>
                                        <div class="gutter_items">
                                            <a class="gutter_item"
                                               href="">By
                                                Friends</a>
                                            <a class="gutter_item"
                                               href="">By Curators</a>
                                            <a class="gutter_item"
                                               href="">Tags</a>
                                        </div>
                                        <div class="gutter_header pad">Browse Categories</div>
                                        <div class="gutter_items">
                                            <a class="gutter_item"
                                               href="">Top
                                                Sellers</a>
                                            <a class="gutter_item"
                                               href="">New
                                                Releases</a>
                                            <a class="gutter_item"
                                               href="">Upcoming</a>
                                            <a class="gutter_item"
                                               href="">
                                                Specials</a>
                                            <a class="gutter_item" href="">VR
                                                Titles</a>
                                            <a class="gutter_item"
                                               href="">Controller-Friendly</a>
                                            <a class="gutter_item"
                                               href="">Great on
                                                Deck</a>
                                        </div>
                                    </div>
                                    <div class="home_page_gutter_block">
                                        <div class="gutter_header pad">Browse by genre</div>
                                        <c:forEach items="${listCategories}" var="o">
                                            <a class="gutter_item"
                                               href="category?cateid=${o.categoryId}">
                                                ${o.categoryName}</a>
                                            </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!--conatiner main-->
                            <div class="home_page_body_ctn  has_takeover mobile_static_set mobile_sizer_set mobile_video_set">
                                <div class="store_bg_overlay">
                                    <div class="gradient_left gradient_width"></div>
                                    <div class="gradient_right gradient_width"></div>
                                </div>

                                <div class="fullscreen-bg">
                                    <a data-panel="{&quot;focusable&quot;:false}"
                                       href="https://store.steampowered.com/category/scream?snr=1_4_4__118" class="promo_link"
                                       style="display: block;">
                                        <video loop muted autoplay playsinline
                                               poster="https://cdn.akamai.steamstatic.com/steam/clusters/frontpage/8ad799076d8330ab5503472c/page_bg_english.jpg?t=1698557339"
                                               class="fullscreen-bg__video">
                                            <source
                                                src="https://cdn.akamai.steamstatic.com/steam/clusters/frontpage/8ad799076d8330ab5503472c/webm_page_bg_english.webm?t=1698557339"
                                                type="video/webm">
                                            <source
                                                src="https://cdn.akamai.steamstatic.com/steam/clusters/frontpage/8ad799076d8330ab5503472c/mp4_page_bg_english.mp4?t=1698557339"
                                                type="video/mp4">
                                        </video>
                                    </a>
                                </div>
                                <div class="home_page_content" style="top:-460px ">
                                    <%@include file="tag.jsp" %>
                                </div>
                                <div class="static_takeover_ctn">
                                    <div class="page_background_holder"
                                         style="height: 450px; background-image: url( 'https://cdn.akamai.steamstatic.com/steam/clusters/frontpage/8ad799076d8330ab5503472c/page_bg_english.jpg?t=1698557339' ), linear-gradient( to right, rgb( 0,0,0) 50%, rgb(0,0,0) 50% );">
                                    </div>
                                    <div class="page_background_holder_mobile"
                                         style="height: 350px; background-image: url( 'https://cdn.akamai.steamstatic.com/steam/clusters/frontpage/8ad799076d8330ab5503472c/page_bg_mobile_english.jpg?t=1698557339' ), linear-gradient( to right, rgb( 0,0,0) 50%, rgb(0,0,0) 50% );">
                                    </div>
                                </div>
                                <div class="home_cluster_ctn home_ctn">                                 
                                    <div class="home_page_content">  
                                        <style>
                                            @import url("https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600&display=swap");
                                            * {
                                                font-family: "Quicksand", sans-serif;
                                            }
                                            section {
                                                max-width: 1180px;
                                                margin: 0 auto;
                                            }
                                            h1 {
                                                font-weight: 700;
                                                text-align: center;
                                                letter-spacing: 0.5rem;
                                                text-transform: uppercase;
                                                margin: 4rem 0 0 0;
                                                color:rgb(255,255,255);
                                            }
                                            h2{
                                                color:#111111;
                                            }
                                            .list {
                                                background: rgba();
                                                display: flex;
                                                flex-wrap: wrap;
                                                -webkit-box-pack: center;
                                                -ms-flex-pack: center;
                                                justify-content: center;
                                                padding: 5rem 0;
                                                cursor: pointer;
                                            }
                                            .list > .product {
                                                width: 200px;
                                                float: left;
                                                height: 300px;
                                                background: #fff;
                                                margin: 1%;
                                                position: relative;
                                            }
                                            .product > div {
                                                text-align: center;
                                                position: absolute;
                                                -webkit-transition: all 0.5s;
                                                -o-transition: all 0.5s;
                                                transition: all 0.5s;
                                                bottom: 0;
                                                height: 0;
                                                overflow: hidden;
                                                width: 100%;
                                                margin: 0 auto;
                                                border-radius: 4px;
                                                color: #111111;
                                            }
                                            .product:hover > div {
                                                position: absolute;
                                                height: 300px;
                                                background: rgba(255, 255, 255, 0.5);
                                            }
                                            .product > img {
                                                margin: 0 auto;
                                                display: block;
                                                -webkit-transition: all 0.5s;
                                                -o-transition: all 0.5s;
                                                transition: all 0.5s;
                                                border-radius: 4px;
                                            }
                                            .product:hover > img {
                                                -webkit-filter: blur(3px) saturate(1.5);
                                                filter: blur(3px) saturate(1.5);
                                            }
                                            .product > div > h2 {
                                                border-bottom: 1px solid #818181;
                                                padding: 0 0 1rem;
                                                color: #111111
                                            }
                                            .descr {
                                                font-size: 0.8rem;
                                                padding: 2rem;
                                                line-height: 1.2rem;
                                                font-weight: 600;
                                            }
                                            .product > div > a > p {
                                                text-transform: uppercase;
                                                letter-spacing: 2px;
                                                font-size: 1rem;
                                                line-height: 2.4rem;
                                                background: #000;
                                                color: #fff;
                                                position: absolute;
                                                width: 100%;
                                                bottom: 0;
                                                margin: 0 auto !important;
                                                -webkit-transition: all 0.2s;
                                                -o-transition: all 0.2s;
                                                transition: all 0.2s;
                                            }
                                            .product > div > a > p:hover {
                                                filter: brightness(0.9);
                                                letter-spacing: 4px;
                                            }
                                            .price{
                                                font-size: 14px;
                                                font-weight: 500;
                                            }
                                        </style>
                                        
                                        <h1>${FirstTitle}</h1>
                                        <div class="list">
                                            <c:forEach items="${listGames}" var="o" begin="0" end="12">
                                                <div class="product" style="overflow: hidden;" onclick="redirectToProductDetail('${o.gameId}')">
                                                    <img alt="shoes1" src="${o.gameimgs[0].imgLink}"
                                                         style="object-fit: cover; width: 100%; height: 100%;"/>
                                                    <div>
                                                        <h2>${o.gameName}</h2>
                                                        <c:choose>
                                                            <c:when test="${o.initialPrice eq 0}">
                                                                <p class="price">Free To Play</p>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <c:if test="${o.isDiscount()}">
                                                                    <p class="price">${o.discountPrice}<sup>đ</sup></p>
                                                                    <p class="price">- ${Math.round((o.initialPrice-o.discountPrice)/o.initialPrice*100)} %</p>
                                                                </c:if>
                                                                <c:if test="${!o.isDiscount()}">
                                                                    <p class="price">${o.initialPrice}<sup>đ</sup></p>
                                                                </c:if>
                                                            </c:otherwise>
                                                        </c:choose>

                                                        <p class="descr" style="font-size: 18px; font-weight: 1000">${o.gameName}</p>
                                                        <br/>
                                                        <a href="#"><p>Add to cart</p></a>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        <h1>SPECIAL &amp; OFFERS</h1>
                                        <div class="my-div-style_kl" style="width: 100%">
                                            <link rel="stylesheet" href="assets/css/listGame.css"/>
                                            <div class="sp-slideshow">
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
                                                        <c:forEach items="${listGameSPE_OFF}" var="o" begin="0" end="4">
                                                            
                                                            <li onclick="redirectToProductDetail('${o.gameId}')" style="cursor: pointer;overflow: hidden;">
                                                                <img src="${o.gameimgs[0].imgLink}" alt="image01"/>
                                                            </li>
                                                            
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                                <!-- sp-content -->
                                            </div>
                                        </div>
                                    </div>
                                </div>       
                            </div>
                        </div>  
                    </div>
                    <div class="home_ctn home_content_ctn bottom_content">
                        <div id="homecontent_anchor"></div>
                        <div id="content_callout" class="page_content_ctn dark" data-usability-scroll="120">
                            <div class="home_page_content">
                                <div class="more_content_title"><span>Keep scrolling for more recommendations</span></div>
                                <div class="more_content_desc">Below, you'll find a variety of titles that you may be
                                    interested in from categories across GameStore</div>
                            </div>
                        </div>
                        <div id="content_login" class="page_content_ctn dark" style="display: none;">
                            <div class="home_page_content">
                                <div class="more_content_title"><span>Looking for recommendations?</span></div>
                            </div>
                            <div class="home_page_content">
                                <div class="home_page_sign_in_ctn small">
                                    <p>Sign in to view personalized recommendations</p>
                                    <div class="signin_buttons_ctn">
                                        <a class="btn_green_white_innerfade btn_border_2px btn_medium"
                                           href="https://store.steampowered.com/login/?snr=1_4_4__more-content-login">
                                            <span>Sign In</span>
                                        </a>
                                        <br><br>
                                        Or <a href="https://store.steampowered.com/join/?snr=1_4_4__more-content-login">sign
                                            up</a> and join Steam for free
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%@include file="footer.jsp"%>

                </div>
            </div>
        </from>
</body>
</html>
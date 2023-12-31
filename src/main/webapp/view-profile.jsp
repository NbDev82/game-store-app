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

    </head>  
    <body class="v6 infinite_scrolling responsive_page DefaultTheme ">
        <div class="responsive_page_frame with_header">
            <div class="responsive_page_content">
                <%@ include file="header.jsp"%>
                <div class="responsive_page_template_content">
                    <div class="profile_page">
                        <div class="profile_header_bg">
                            <div class="profile_header_bg_texture">
                                <div class="profile_header">
                                    <div class="profile_header_content">
                                        <div class="profile_header_centered_persona">
                                            <div class="persona_name" style="font-size: 24px">
                                                <span>${acc.userName}</span>
                                            </div>
                                            <div class="persona_email ellipsis">
                                                <span>${acc.email}</span>
                                            </div>
                                            <div class="profile_header_summary">
                                            <div class="profile_summary">${user.summary}</div>
                                        </div>
                                        </div>                                    
                                        <div class="playerAvartar">
                                            <div class="playerAvatarAutoSizeInner">
                                                <img src="https://avatars.cloudflare.steamstatic.com/fef49e7fa7e1997310d705b2a6158ff8dc1cdfeb_full.jpg">
                                            </div>
                                        </div>
                                        <div class="profile_header_badgeinfo">
                                            <div class="profile_header_badgeinfo_badge_area">
                                                <div class="persona_name persona_level">
                                                    Level???
                                                </div>
                                                <div class="profile_header_badge">
                                                    <div class="profile_header_badge_instructions">
                                                        This function is under development, please wait for us a little longer
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="profile_header_actions">
                                                <a class="btn_profile_action btn_medium" href="edit-profile.jsp">
                                                    <span>Edit profile</span>
                                                </a>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="profile_content">
                            <div class="profile_content_inner">
                                <div class="profile_rightcol">
                                    <div class="responsive_status_info">
                                        <div class="profile_in_game persona">
                                            <div class="profile_online_status_header">
                                                Online Status
                                            </div>
                                            <div class="profile_online_status">
                                                Last login ${acc.lastLogin}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="profile_leftcol">
                                    <div class="profile_recentgame_header profile_leftcol_header">
                                        <h2>Your Games</h2>
                                        <div style="clear: both;"></div>
                                    </div>
                                    <c:forEach items="${yourGames}" var="game">
                                        <div class="your_games">
                                            <div class="your_game">
                                                <div class="your_game_content">
                                                    <div class="game_info">
                                                        <div class="game_info_cap">
                                                            <a href="*"> 
                                                                <img class="game_capsule" src="${game.gameimgs[0].imgLink}">
                                                            </a>                                                        
                                                        </div>
                                                        <div class="game_info_details">
                                                            Wish you have a good time
                                                            <br>
                                                            Enjoy the game
                                                        </div>
                                                        <div class="game_name">
                                                            <a class="whiteLink" href="/game-store-app-v1/game?gameId=${game.gameId}">${game.gameName}</a>
                                                        </div>
                                                    </div>
                                                </div>   
                                            </div>
                                        </div>
                                    </c:forEach>
                                    
                                </div>
                                <div style="clear: both;"></div>
                            </div>
                        </div>
                    </div>
                        
                </div>
                <%@ include file="footer.jsp"%>
            </div>
        </div>
    </body>
</html>


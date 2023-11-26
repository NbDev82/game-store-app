<%-- 
    Document   : search.jsp
    Created on : Nov 22, 2023, 10:24:45 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head></head>
    <body>
        <!-- Container main -->
        <div id="store_header" class="">
            <!-- Content Container -->
            <div class="content">
                <!-- Not important <controls>-->
                <div id="store_controls">
                    <div class="cart_status_flex" id="cart_status_data">

                        <div class="store_header_btn_green store_header_btn" id="store_header_cart_btn"
                             style="display: none;">
                            <div class="store_header_btn_caps store_header_btn_leftcap"></div>
                            <div class="store_header_btn_caps store_header_btn_rightcap"></div>
                            <a id="cart_link" class="store_header_btn_content" href="#">
                                Cart (<span id="cart_item_count_value">0</span>)
                            </a>
                        </div>
                    </div>
                </div>
                <!-- Header container -->
                <div id="store_nav_area">
                    <div class="store_nav_leftcap"></div>
                    <div class="store_nav_bg">
                        <div class="store_nav" data-panel="{&quot;flow-children&quot;:&quot;row&quot;}">

                            <!--Your Store -->
                            <div class="tab  flyout_tab " id="foryou_tab" data-flyout="foryou_flyout"
                                 data-flyout-align="left" data-flyout-valign="bottom" data-flyout-delay="300"
                                 data-panel="{&quot;focusable&quot;:true}">
                                <span class="pulldown">
                                    <a class="pulldown_desktop" href="#">Your Store</a>
                                    <a class="pulldown_mobile" href="#">Your Store</a>
                                    <span></span>
                                </span>
                            </div>
                            <!-- Hidden YourStore Tab-->
                            <div class="popup_block_new flyout_tab_flyout responsive_slidedown"
                                 id="foryou_flyout" style="display: none;">
                                <div class="popup_body popup_menu popup_menu_browse">
                                    <a class="popup_menu_item" href="/game-store-app-v1/home"> Home </a>
                                    <a class="popup_menu_item" href="#"> Community Recommendations </a>
                                    <a class="popup_menu_item" href="#"> Recently Viewed </a>
                                    <a class="popup_menu_item" href="#"> Steam Curators </a>
                                </div>
                            </div>

                            <!-- New & Noteworthy -->
                            <div class="store_labs_new"></div>
                            <div class="tab  flyout_tab " id="noteworthy_tab"
                                 data-flyout="noteworthy_flyout" data-flyout-align="left"
                                 data-flyout-valign="bottom" data-flyout-delay="300"
                                 data-panel="{&quot;focusable&quot;:true}">
                                <span class="pulldown">
                                    <a href="javascript:void(0);" class="pulldown_desktop">New &amp;
                                        Noteworthy</a>
                                    <a href="javascript:void(0);" class="pulldown_mobile">New &amp;
                                        Noteworthy</a>
                                    <span></span>
                                </span>
                            </div>
                            <!-- Hidden  New & Noteworthy  -->
                            <div class="popup_block_new flyout_tab_flyout responsive_slidedown"
                                 id="noteworthy_flyout" style="display: none;">
                                <div class="popup_body popup_menu_twocol_new">
                                    <div class="popup_menu popup_menu_browse"
                                         data-panel="{&quot;maintainY&quot;:true,&quot;flow-children&quot;:&quot;column&quot;}">
                                        <div class="popup_menu_subheader responsive_hidden">Popular</div>
                                        <!-- Top seller -->
                                        <!-- Comback Home OK -->
                                        <a class="popup_menu_item" href="#">
                                            Top Sellers </a>
                                        <a class="popup_menu_item" href="#">
                                            Most Played </a>
                                        <div class="category_hr responsive_hidden"></div>
                                        <a class="popup_menu_item" href="#">
                                            New Releases </a>

                                        <a class="popup_menu_item" href="#">
                                            Upcoming Releases </a>

                                        <div class="popup_menu_subheader responsive_hidden">News & Updates
                                        </div>

                                        <a class="popup_menu_item" href="#">
                                            Recently Updated </a>

                                    </div>

                                    <div class="popup_menu popup_menu_browse leftborder"
                                         data-panel="{&quot;maintainY&quot;:true,&quot;flow-children&quot;:&quot;column&quot;}">
                                        <div class="popup_menu_subheader responsive_hidden">Promos & Events
                                        </div>

                                        <a class="popup_menu_item" href="#">
                                            Special Offers </a>

                                        <a class="popup_menu_item" href="#">
                                            Sale Events </a>

                                        <div class="category_hr responsive_hidden"></div>

                                        <a class="popup_menu_item" href="#">
                                            Steam Replay 2022 </a>

                                        <a class="popup_menu_item" href="#">
                                            Steam Next Fest </a>

                                    </div>

                                    <!--
                    <div class="popup_menu_subheader">Sale Events
                    </div>

                    <a class="popup_menu_item" href="https://store.steampowered.com/search/?specials=1&snr=1_5_9__12">
                        Weekly Specials
                    </a>
                    <a class="popup_menu_item" href="https://store.steampowered.com/sale/vr_specials/?snr=1_5_9__12">
                        Weekly VR Specials
                    </a>
                                    -->
                                </div>
                            </div>
                            <!-- Categories -->
                            <div class="tab  flyout_tab " id="genre_tab" data-flyout="genre_flyout"
                                 data-flyout-align="left" data-flyout-valign="bottom"
                                 data-flyout-align-to-element="foryou_tab" data-flyout-delay="300"
                                 data-panel="{&quot;focusable&quot;:true}">
                                <span class="pulldown">
                                    <a class="pulldown_desktop" href="javascript:void(0);">Categories</a>
                                    <a class="pulldown_mobile" href="javascript:void(0);">Categories</a>
                                    <span></span>
                                </span>
                            </div>
                            <!-- Hidden Categories -->
                            <div class="popup_block_new flyout_tab_flyout responsive_slidedown"
                                 id="genre_flyout" style="display: none;">
                                <div class="popup_body popup_menu_twocol_new">
                                    <div class="popup_menu popup_menu_browse"
                                         data-panel="{&quot;maintainY&quot;:true,&quot;flow-children&quot;:&quot;column&quot;}">

                                        <div class="popup_menu_subheader responsive_hidden">Special Sections
                                        </div>
                                        <a class="popup_menu_item" href="#">
                                            Free to Play </a>
                                        <a class="popup_menu_item" href="#">
                                            <span>Demos</span>
                                        </a>
                                        <a class="popup_menu_item" href="#">
                                            Early Access </a>
                                        <div class="category_hr responsive_hidden"></div>

                                        <a class="popup_menu_item" href="#">
                                            <span>Steam Deck</span>
                                        </a>

                                        <a class="popup_menu_item" href="#">
                                            <span>Great on Deck</span>
                                        </a>

                                        <div class="category_hr responsive_hidden"></div>

                                        <a class="popup_menu_item" href="#">
                                            <span>Controller-Friendly</span>
                                        </a>

                                        <a class="popup_menu_item" href="#">
                                            <span>Remote Play</span>
                                        </a>

                                        <div class="category_hr responsive_hidden"></div>

                                        <a class="popup_menu_item" href="#">
                                            <span>VR Titles</span>
                                        </a>

                                        <a class="popup_menu_item" href="#">
                                            <span>VR Hardware</span>
                                        </a>

                                        <div class="category_hr responsive_hidden"></div>



                                        <a class="popup_menu_item" href="#">
                                            Software </a>

                                        <a class="popup_menu_item" href="#">
                                            Soundtracks </a>

                                        <div class="category_hr responsive_hidden"></div>

                                        <a class="popup_menu_item" href="#">
                                            macOS </a>
                                        <a class="popup_menu_item" href="#">
                                            SteamOS + Linux </a>

                                        <a class="popup_menu_item" href="#">
                                            <span>For PC Cafés</span>
                                        </a>

                                    </div>
                                    <div class="popup_menu popup_menu_browse leftborder"
                                         data-panel="{&quot;maintainY&quot;:true,&quot;flow-children&quot;:&quot;column&quot;}">
                                        <div class="popup_menu_subheader reduced_vspace">
                                            Genres
                                        </div>
                                        <div class="popup_menu_item popup_genre_expand_header nonresponsive_hidden"
                                             data-genre-group="action">
                                            Action </div>
                                        <div class="popup_menu_subheader popup_genre_expand_header responsive_hidden"
                                             data-genre-group="action">
                                            <a class="popup_menu_item" href="#">
                                                Action </a>
                                        </div>
                                        <div class="popup_genre_expand_content responsive_hidden"
                                             data-genre-group="action">
                                            <a class="popup_menu_item" href="#">Arcade
                                                & Rhythm</a>
                                            <a class="popup_menu_item" href="#">Fighting
                                                & Martial Arts</a>
                                            <a class="popup_menu_item" href="#">First-Person
                                                Shooter</a>
                                            <a class="popup_menu_item" href="#">Hack
                                                & Slash</a>
                                            <a class="popup_menu_item" href="#">Platformer
                                                & Runner</a>
                                            <a class="popup_menu_item" href="#">Third-Person
                                                Shooter</a>
                                            <a class="popup_menu_item" href="#">shmup</a>
                                        </div>
                                        <div class="popup_menu_item popup_genre_expand_header nonresponsive_hidden"
                                             data-genre-group="adventure">
                                            Adventure </div>
                                        <div class="popup_menu_subheader popup_genre_expand_header responsive_hidden"
                                             data-genre-group="adventure">
                                            <a class="popup_menu_item" href="#">
                                                Adventure </a>
                                        </div>
                                        <div class="popup_genre_expand_content responsive_hidden"
                                             data-genre-group="adventure">
                                            <a class="popup_menu_item" href="#">Adventure
                                                RPG</a>
                                            <a class="popup_menu_item" href="#">Casual</a>
                                            <a class="popup_menu_item" href="#">Hidden
                                                Object</a>
                                            <a class="popup_menu_item" href="#">Metroidvania</a>
                                            <a class="popup_menu_item" href="#">Puzzle</a>
                                            <a class="popup_menu_item" href="#">Story-Rich</a>
                                            <a class="popup_menu_item" href="#">Visual
                                                Novel</a>
                                        </div>
                                    </div>
                                    <div class="popup_menu popup_menu_browse "
                                         data-panel="{&quot;maintainY&quot;:true,&quot;flow-children&quot;:&quot;column&quot;}">
                                        <div class="popup_menu_subheader reduced_vspace responsive_hidden">
                                            <br>
                                        </div>
                                        <div class="popup_menu_item popup_genre_expand_header nonresponsive_hidden"
                                             data-genre-group="rpg">
                                            Role-Playing </div>
                                        <div class="popup_menu_subheader popup_genre_expand_header responsive_hidden"
                                             data-genre-group="rpg">
                                            <a class="popup_menu_item" href="#">
                                                Role-Playing </a>
                                        </div>
                                        <div class="popup_genre_expand_content responsive_hidden"
                                             data-genre-group="rpg">
                                            <a class="popup_menu_item" href="#">Action
                                                RPG</a>
                                            <a class="popup_menu_item" href="#">Adventure
                                                RPG</a>
                                            <a class="popup_menu_item" href="#">JRPG</a>
                                            <a class="popup_menu_item" href="#">Party-Based</a>
                                            <a class="popup_menu_item" href="#">Rogue-Like</a>
                                            <a class="popup_menu_item" href="#">Strategy
                                                RPG</a>
                                            <a class="popup_menu_item" href="#">Turn-Based</a>
                                        </div>
                                        <div class="popup_menu_item popup_genre_expand_header nonresponsive_hidden"
                                             data-genre-group="simulation">
                                            Simulation </div>
                                        <div class="popup_menu_subheader popup_genre_expand_header responsive_hidden"
                                             data-genre-group="simulation">
                                            <a class="popup_menu_item" href="#">
                                                Simulation </a>
                                        </div>
                                        <div class="popup_genre_expand_content responsive_hidden"
                                             data-genre-group="simulation">
                                            <a class="popup_menu_item" href="#">Building
                                                & Automation</a>
                                            <a class="popup_menu_item" href="#">Dating</a>
                                            <a class="popup_menu_item" href="#">Farming
                                                & Crafting</a>
                                            <a class="popup_menu_item" href="#">Hobby
                                                & Job</a>
                                            <a class="popup_menu_item" href="#">Life
                                                & Immersive</a>
                                            <a class="popup_menu_item" href="#">Sandbox
                                                & Physics</a>
                                            <a class="popup_menu_item" href="#">Space
                                                & Flight</a>
                                        </div>
                                    </div>
                                    <div class="popup_menu popup_menu_browse "
                                         data-panel="{&quot;maintainY&quot;:true,&quot;flow-children&quot;:&quot;column&quot;}">
                                        <div class="popup_menu_subheader reduced_vspace responsive_hidden">
                                            <br>
                                        </div>
                                        <div class="popup_menu_item popup_genre_expand_header nonresponsive_hidden"
                                             data-genre-group="strategy">
                                            Strategy </div>
                                        <div class="popup_menu_subheader popup_genre_expand_header responsive_hidden"
                                             data-genre-group="strategy">
                                            <a class="popup_menu_item" href="#">
                                                Strategy </a>
                                        </div>
                                        <div class="popup_genre_expand_content responsive_hidden"
                                             data-genre-group="strategy">
                                            <a class="popup_menu_item" href="#">Card
                                                & Board</a>
                                            <a class="popup_menu_item" href="#">City
                                                & Settlement</a>
                                            <a class="popup_menu_item" href="#">Grand
                                                & 4X</a>
                                            <a class="popup_menu_item" href="#">Military</a>
                                            <a class="popup_menu_item" href="#">Real-Time
                                                Strategy</a>
                                            <a class="popup_menu_item" href="#">Tower
                                                Defense</a>
                                            <a class="popup_menu_item" href="#">Turn-Based
                                                Strategy</a>
                                        </div>
                                        <div class="popup_menu_item popup_genre_expand_header nonresponsive_hidden"
                                             data-genre-group="sports_and_racing">
                                            Sports & Racing </div>
                                        <div class="popup_menu_subheader popup_genre_expand_header responsive_hidden"
                                             data-genre-group="sports_and_racing">
                                            <a class="popup_menu_item" href="#">
                                                Sports & Racing </a>
                                        </div>
                                        <div class="popup_genre_expand_content responsive_hidden"
                                             data-genre-group="sports_and_racing">
                                            <a class="popup_menu_item" href="#">All
                                                Sports</a>
                                            <a class="popup_menu_item" href="#">Fishing
                                                & Hunting</a>
                                            <a class="popup_menu_item" href="#">Individual
                                                Sports</a>
                                            <a class="popup_menu_item" href="#">Racing</a>
                                            <a class="popup_menu_item" href="#">Racing
                                                Sim</a>
                                            <a class="popup_menu_item" href="#">Sports
                                                Sim</a>
                                            <a class="popup_menu_item" href="#">Team
                                                Sports</a>
                                        </div>
                                    </div>
                                    <div class="popup_menu popup_menu_browse leftborder"
                                         data-panel="{&quot;maintainY&quot;:true,&quot;flow-children&quot;:&quot;column&quot;}">
                                        <div class="popup_menu_item popup_genre_expand_header nonresponsive_hidden"
                                             data-genre-group="themes">
                                            Themes </div>
                                        <div
                                            class="popup_menu_subheader players popup_genre_expand_header responsive_hidden">
                                            Themes </div>
                                        <div class="popup_genre_expand_content responsive_hidden"
                                             data-genre-group="themes">
                                            <a class="popup_menu_item" href="#">Anime</a>
                                            <a class="popup_menu_item" href="#">Horror</a>
                                            <a class="popup_menu_item" href="#">Mystery
                                                & Detective</a>
                                            <a class="popup_menu_item" href="#">Open
                                                World</a>
                                            <a class="popup_menu_item" href="#">Sci-Fi
                                                & Cyberpunk</a>
                                            <a class="popup_menu_item" href="#">Space</a>
                                            <a class="popup_menu_item" href="#">Survival</a>
                                            <div class="spacer responsive_hidden"></div>
                                        </div>
                                        <div class="popup_menu_item popup_genre_expand_header nonresponsive_hidden"
                                             data-genre-group="social_and_players">
                                            Player Support </div>
                                        <div
                                            class="popup_menu_subheader players popup_genre_expand_header responsive_hidden">
                                            Player Support </div>
                                        <div class="popup_genre_expand_content responsive_hidden"
                                             data-genre-group="social_and_players">
                                            <a class="popup_menu_item" href="#">Co-Operative</a>
                                            <a class="popup_menu_item" href="#">LAN</a>
                                            <a class="popup_menu_item" href="#">Local
                                                & Party</a>
                                            <a class="popup_menu_item" href="#">MMO</a>
                                            <a class="popup_menu_item" href="#">Multiplayer</a>
                                            <a class="popup_menu_item" href="#">Online
                                                Competitive</a>
                                            <a class="popup_menu_item" href="#">Singleplayer</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Points Shop -->
                            <a class="tab" href="#">
                                <span>Points Shop</span>
                            </a>
                            <!-- News -->
                            <a class="tab  " href="#">
                                <span>News</span>
                            </a>
                            <!-- Labs -->
                            <a class="tab  " href="#">
                                <span>Labs</span>
                            </a>

                            <!--  Search Header Container -->
                            <div class="search_flex_spacer"></div>
                            <div class="search_area">
                                <div id="store_search">
                                    <!-- Form search -->
                                    <!-- action="https://store.steampowered.com/search/" -->
                                    <!-- Action Search -->
                                    <form id="searchform" name="searchform" method="get"
                                          action="Action_Search"
                                          onsubmit="return SearchSuggestCheckTerm(this);">
                                        <input type="hidden" name="snr" value="1_5_9__12">
                                        <div class="searchbox">
                                            <input id="store_nav_search_term" name="term" type="text"
                                                   class="default" placeholder="search" size="22"
                                                   autocomplete="off" maxlength="64">
                                            <a href="#" id="store_search_link"
                                               onclick="var $Form = $J(this).parents('form');
                                                       $Form.submit();
                                                       return false;">
                                                <img
                                                    src="https://store.akamai.steamstatic.com/public/images/blank.gif">
                                            </a>
                                        </div>
                                    </form>
                                </div>
                                <!-- Hidden Action Search -->
                                <div id="searchterm_options" class="search_suggest popup_block_new"
                                     style="display: none;">
                                    <div class="popup_body search_v2" style="border-top: none;">
                                        <div id="search_suggestion_contents">
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!--  div end header of container -->
                    <div class="store_nav_rightcap"></div>
                </div>
            </div>
        </div> 
        <!-- End òf header container -->
        <!-- Script of header container -->
        <!--script1-->
        <script type="text/javascript">
            $J(function () {
                BindAutoFlyoutEvents();

                var $Window = $J(window);
                var $Header = $J('#store_header');
                var $ResponsiveNavWindowShadeCtn = $J('#responsive_store_nav_ctn');
                var $ResponsiveNavOverlay = $J('#responsive_store_nav_overlay');
                var $ResponsiveNavOverlayCtn = $J('#responsive_store_nav_overlay_ctn');
                var $ResponsiveNavOverlayBottom = $J('#responsive_store_nav_overlay_bottom');
                var $HeaderWrapper;
                $Window.on('Responsive_SmallScreenModeToggled.StoreMenu', function () {
                    var bUseSmallScreenMode = window.UseSmallScreenMode && window.UseSmallScreenMode();

                    if (!$HeaderWrapper)
                        $HeaderWrapper = $Header.wrap($J('<div/>', {'class': 'responsive_store_nav_ctn_spacer'})).parent();

                    if (bUseSmallScreenMode)
                        $ResponsiveNavWindowShadeCtn.append($Header);
                    else
                        $HeaderWrapper.append($Header);


                    if (bUseSmallScreenMode) {
                        $Header.css('visibility', 'hidden');
                        $Header.show();

                        var nStartingScrollPosition = $J('#store_header').height();
                        if ($Window.scrollTop() < nStartingScrollPosition)
                            $Window.scrollTop(nStartingScrollPosition);

                        $Header.css('visibility', 'visible');
                    }
                });

                window.setTimeout(function () {
                    $J(window).trigger('Responsive_SmallScreenModeToggled.StoreMenu');
                }, 0);

                var g_rgUserPreferences = {
                    excluded_tags: [],
                    excluded_content_descriptors: [3, 4]
                };

                g_rgUserPreferences['use_store_query'] = 1;

                g_rgUserPreferences['use_search_spellcheck'] = 1;
                g_rgUserPreferences['search_creators_and_tags'] = 1;

                if ($J('#searchform').length > 0) {
                    // default search support where the web page includes the search edit control
                    EnableSearchSuggestions($J('#searchform')[0].elements['term'], '1_5_9_', 'US', 1, 'english', g_rgUserPreferences, '20681965');
                } else {
                    // search support for the mobile client.  the mobile client has a native search edit control but relies on the web content to perform the query and show results
                }

                // make genre categories expand/collapse on mobile
                $J(document).on('click', '.popup_genre_expand_header', function (event) {
                    if (!UseSmallScreenMode())
                        return;

                    event.preventDefault();
                    var $Element = $J(this);
                    var $Target = $J('.popup_genre_expand_content[data-genre-group=' + $Element.data('genre-group') + ']');
                    if ($Element.data('group-expanded')) {
                        $Target.slideUp();
                        $Element.data('group-expanded', false);
                    } else {
                        $Target.slideDown();
                        $Element.data('group-expanded', true);
                    }
                });
            });
        </script>
        <!--script 2-->
        <script type="text/javascript">
            var g_AccountID = 0;
            var g_sessionID = "312c266b8c4f8ba30f7915a0";
            var g_ServerTime = 1697812903;
            var g_bUseNewCartAPI = false;

            $J(InitMiniprofileHovers('https%3A%2F%2Fstore.steampowered.com%2F'));


            GStoreItemData.AddNavParams({
                __page_default: "1_7_7_151",
                storemenu_recommendedtags: "1_7_7_151_17"
            });
            GDynamicStore.Init(0, false, "", {"primary_language": null, "secondary_languages": null, "platform_windows": null, "platform_mac": null, "platform_linux": null, "timestamp_updated": null, "hide_store_broadcast": null, "review_score_preference": null, "timestamp_content_descriptor_preferences_updated": null, "provide_deck_feedback": null, "additional_languages": null}, 'US',
                    {"bNoDefaultDescriptors": false});
            GStoreItemData.SetCurrencyFormatter(function (nValueInCents, bWholeUnitsOnly) {
                var fmt = function (nValueInCents, bWholeUnitsOnly) {
                    var format = v_numberformat(nValueInCents / 100, bWholeUnitsOnly ? 0 : 2, ".", ",");
                    return format;
                };
                var strNegativeSymbol = '';
                if (nValueInCents < 0) {
                    strNegativeSymbol = '-';
                    nValueInCents = -nValueInCents;
                }
                return strNegativeSymbol + "$" + fmt(nValueInCents, bWholeUnitsOnly);
            });
            GStoreItemData.SetCurrencyMinPriceIncrement(1);
        </script>
    </body>
</html>
/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* global InitInfiniteScroll, GDynamicStore, HandleBackReposition */

src = "https://store.cloudflare.steamstatic.com/public/shared/javascript/jquery-1.8.3.min.js?v=.TZ2NKhB-nliU&amp;_cdn=cloudflare";
$J = jQuery.noConflict();
VALVE_PUBLIC_PATH = "https:\/\/store.cloudflare.steamstatic.com\/public\/";
src = "https://store.cloudflare.steamstatic.com/public/shared/javascript/tooltip.js?v=.zYHOpI1L3Rt0&amp;_cdn=cloudflare";
src = "https://store.cloudflare.steamstatic.com/public/shared/javascript/shared_global.js?v=joUly9uZoJX_&amp;l=english&amp;_cdn=cloudflare";
src = "https://store.cloudflare.steamstatic.com/public/javascript/main.js?v=aVwmJL6U2Amu&amp;l=english&amp;_cdn=cloudflare";
src = "https://store.cloudflare.steamstatic.com/public/javascript/dynamicstore.js?v=zT0Cl5vv5AfQ&amp;l=english&amp;_cdn=cloudflare";
var __PrototypePreserve = [];
__PrototypePreserve[0] = Array.from;
__PrototypePreserve[1] = Array.prototype.filter;
__PrototypePreserve[2] = Array.prototype.flatMap;
__PrototypePreserve[3] = Array.prototype.find;
__PrototypePreserve[4] = Array.prototype.some;
__PrototypePreserve[5] = Function.prototype.bind;
__PrototypePreserve[6] = HTMLElement.prototype.scrollTo;
src = "https://store.cloudflare.steamstatic.com/public/javascript/prototype-1.7.js?v=.a38iP7Khdmyy&amp;_cdn=cloudflare";
Array.from = __PrototypePreserve[0] || Array.from;
Array.prototype.filter = __PrototypePreserve[1] || Array.prototype.filter;
Array.prototype.flatMap = __PrototypePreserve[2] || Array.prototype.flatMap;
Array.prototype.find = __PrototypePreserve[3] || Array.prototype.find;
Array.prototype.some = __PrototypePreserve[4] || Array.prototype.some;
Function.prototype.bind = __PrototypePreserve[5] || Function.prototype.bind;
HTMLElement.prototype.scrollTo = __PrototypePreserve[6] || HTMLElement.prototype.scrollTo;

var __ScriptaculousPreserve = [];
__ScriptaculousPreserve[0] = Array.from;
__ScriptaculousPreserve[1] = Function.prototype.bind;
__ScriptaculousPreserve[2] = HTMLElement.prototype.scrollTo;

src = "https://store.cloudflare.steamstatic.com/public/javascript/scriptaculous/_combined.js?v=Me1IBxzktiwk&amp;l=english&amp;_cdn=cloudflare&amp;load=effects,controls,slider";

Array.from = __ScriptaculousPreserve[0] || Array.from;
Function.prototype.bind = __ScriptaculousPreserve[1] || Function.prototype.bind;
HTMLElement.prototype.scrollTo = __ScriptaculousPreserve[2] || HTMLElement.prototype.scrollTo;

Object.seal && [Object, Array, String, Number].map(function (builtin) {
    Object.seal(builtin.prototype);
});
document.addEventListener('DOMContentLoaded', function (event) {
    $J.data(document, 'x_readytime', new Date().getTime());
    $J.data(document, 'x_oldref', GetNavCookie());
    SetupTooltips({tooltipCSSClass: 'store_tooltip'});
});
src = "https://store.cloudflare.steamstatic.com/public/shared/ja    vascript/dselect.js?v=sjouo3-33Gox&amp;l=english&amp;_cdn=cloudflare";
src = "https://store.cloudflare.steamstatic.com/public/javascript/searchpage.js?v=HcOV6zjiN_eu&amp;l=english&amp;_cdn=cloudflare";
src = "https://store.cloudflare.steamstatic.com/public/javascript/jquery.filter.js?v=.UsxvqYeHZ01h&amp;_cdn=cloudflare";
src = "https://store.cloudflare.steamstatic.com/public/shared/javascript/shared_responsive_adapter.js?v=pSvIAKtunfWg&amp;l=english&amp;_cdn=cloudflare";

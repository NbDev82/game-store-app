/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function redirectToProductDetail(gameId) {
    window.location.href = 'game?gameId=' + gameId;
}
function calMinusPricePercent(init, discount) {
    var initial = parseFloat(init.replace(",", ""));
    var discount = parseFloat(discount.replace(",", ""));

    if (initial >= 0 && discount >= 0) {
        return parseInt(((initial - discount) / initial) * 100);
    } else {
        return 0;
    }
}
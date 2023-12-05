var check = false;

$(document).ready(function(){

    window.setTimeout(function(){$(".is-open").removeClass("is-open")}, 1200);

    $(".btn").click(function(){
        check = true;
        $(".remove").click();
    });
});

function getCardId(){
    event.preventDefault();
    const radioButtons = document.querySelectorAll('input[name="toggle"]');
    var cardId = document.getElementById('submitCardId');
    var i = 1;
    radioButtons.forEach(radio => {
        if (radio.checked) {
            const slide = document.getElementById('slide-'+i);
            const cardIdInput = slide.querySelector('input[name="cardId"]');
            if (cardIdInput) {
                cardId.value = cardIdInput.value;
            }
        }
        i = i+1;
    });
    var form = document.getElementById('checkoutForm');
    form.submit();
}
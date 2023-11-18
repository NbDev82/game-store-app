function validateNumberInput(input) {
  input.value = input.value.replace(/\D/g, '');
}

function validateForm() {
    event.preventDefault()
    var cardNumber = document.getElementById('cardNumber').value;
    var condition = cardNumber.length === 16;
    if (condition) {
        var form = document.getElementById('submitForm');
        alert("sucessfull!")
        form.submit(); // Gửi form
    }else{
        alert("Please enter a valid 16-digit card number")
    }
}


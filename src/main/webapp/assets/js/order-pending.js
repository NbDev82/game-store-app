function submitForm(){
    let form = document.getElementById("formSelect");
    let filter = document.getElementById("filterSelect");
    let selected = document.getElementById("selected");
    selected.value = filter.value;
    form.submit();
}



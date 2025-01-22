
let button_enviar_form = document.getElementById("submit-form");
let form = document.getElementById("form");
let usarname_form = document.getElementById("username").value;
let password_form = document.getElementById("password").value;
let button_reset = document.getElementById("reset-form");
button_enviar_form.addEventListener('click', (e) => {

    console.log()
    if (usarname_form == "Pedro" || usarname_form == "Marcia" || usarname_form == "Marcio" || usarname_form == "João" || usarname_form == "Beatriz") {
        if(password_form == "root"){
            alert("Usuário Correto");
        }
        form.action = "./SchuenckHome/index.html";
    } else {
        alert("Usuário ou senha, errado.");
        e.preventDefault();
    }
}
)
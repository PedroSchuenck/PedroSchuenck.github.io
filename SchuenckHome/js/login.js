let button_enviar_form = document.getElementById("submit-form");
let form = document.getElementById("form");
let button_reset = document.getElementById("reset-form");
let modal_login = document.getElementById("modal-login");
let fechar_modal = document.querySelector(".bi-x-lg");
let texto_modal_login = document.getElementById("text-modal-login");


button_enviar_form.addEventListener('click', (e) => {
    let usarname_form = document.getElementById("username").value.toLowerCase();
    let password_form = document.getElementById("password").value;
    modalLogin(usarname_form,password_form);
})

fechar_modal.addEventListener('click', ()=>{
    modal_login.style.opacity = "0";
    
})
 
//função modal login
function modalLogin(usuario, senha){
    if(usuario !== "root" && senha !== "1234"){
        console.log("entrou")
        texto_modal_login.innerHTML = "Usuário e Senha, Incorretos!";
        texto_modal_login.style.color = "red";
        modal_login.style.opacity = "1";

    }
    else if(usuario !== "root"){
        texto_modal_login.innerHTML = "Seu Usuário está incorreto!";
        texto_modal_login.style.color = "red";
        modal_login.style.opacity = "1";

    }
    else if(senha != "1234"){
        texto_modal_login.innerHTML = "Sua senha esta incorreta!";
        texto_modal_login.style.color = "red";
        modal_login.style.opacity = "1";
    }
    else{
        console.log("aqui")
        texto_modal_login.innerHTML = "Login efetuado com sucesso";
        texto_modal_login.style.color = "green";
        modal_login.style.opacity = "1";
    }
}
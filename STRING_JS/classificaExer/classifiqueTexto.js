const passwordInput = document.getElementById("senha");
btexecuta = document.getElementById("executa");
let resultado = document.getElementById("resultado")


btexecuta.addEventListener("click", function() {
  const password = passwordInput.value;

  let minusculo = false;
  let maiusculo = false;
  let numero = false;
  let especial = false;

  for (let i = 0; i < password.length; i++) {
    const char = password.charAt(i);
    if (/[a-z]/.test(char)) {
      minusculo = true;
    } else if (/[A-Z]/.test(char)) {
      maiusculo = true;
    } else if (/[0-9]/.test(char)) {
      numero = true;
    } else if (/[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/.test(char)) {
      especial = true;
    }
  }

  let strength;

  if (minusculo && maiusculo && numero && especial) {
    strength = "forte";
    resultado.style.backgroundColor = "green";
  } else if (minusculo && maiusculo && numero) {
    strength = "moderada";
    resultado.style.backgroundColor = "orange";
  } else if(minusculo || maiusculo){
    strength = "fraca";
    resultado.style.backgroundColor = "red";
  }

  resultado.setCustomValidity("Senha " + strength + ".");
});

document.addEventListener("DOMContentLoaded", function () {
    alert("pedro vai comer")
    let url = "https://rafaelescalfoni.github.io/desenv_web/restaurante/items.json";
    let divCardapio = document.getElementById("cardapio");
    let divCarrinho = document.getElementById("carrinho");
    let listaCarrinho = document.getElementById("lista-carrinho");
    let fecharContaButton = document.getElementById("fechar-conta");
    let carrinhoDeCompras = [];
    let totalPrecos = {};
    let itemTimers = {};

    function obterDadosDaAPI(url, callback) {
        let https = new XMLHttpRequest();
        https.open('GET', url);
        https.send();

        https.onreadystatechange = function () {
            if (https.readyState === 4 && https.status === 200) {
                let api = https.responseText;
                let restaurante = JSON.parse(api);
                callback(restaurante);
            }
        };
    }

    function cardapio(restaurante) {
        restaurante.forEach(item => {
            let divElemento = document.createElement('div');
            divElemento.classList.add("divElemento");

            let codigo = document.createElement('p');
            codigo.classList.add("codigo");
            codigo.textContent = item.code;
            divElemento.appendChild(codigo);

            let nome = document.createElement('p');
            nome.classList.add("nome");
            nome.textContent = item.name;
            divElemento.appendChild(nome);

            let img = document.createElement('img');
            img.setAttribute('src', `https://rafaelescalfoni.github.io/desenv_web/restaurante/${item.photo}`);
            img.setAttribute('alt', "Imagem do item");
            img.classList.add('img');
            divElemento.appendChild(img);

            let preco = document.createElement('p');
            preco.classList.add("preco");
            preco.textContent = item.price;
            divElemento.appendChild(preco);

            let detalhes = document.createElement('p');
            detalhes.classList.add("detalhes");
            detalhes.textContent = item.details;
            divElemento.appendChild(detalhes);

            let button = document.createElement('button');
            button.classList.add("button-elemento");
            button.textContent = "Adicionar no carrinho";

            button.addEventListener('click', function () {
                adicionarAoCarrinho(item);
            });

            divElemento.appendChild(button);
            divCardapio.appendChild(divElemento);
        });
    }

    function atualizarCarrinho() {
        listaCarrinho.innerHTML = "";
        carrinhoDeCompras.forEach(item => {
            let li = document.createElement('li');
            li.textContent = item.name + " - R$" + formatarNumero(totalPrecos[item.code]);

            let cancelarButton = document.createElement('button');
            cancelarButton.textContent = "Cancelar";
            cancelarButton.addEventListener('click', function () {
                cancelarItemDoCarrinho(item);
            });

            li.appendChild(cancelarButton);
            listaCarrinho.appendChild(li);
        });
    }

    function adicionarAoCarrinho(item) {
        carrinhoDeCompras.push(item);
        const priceWithoutCurrency = item.price.replace(/[^\d.]/g, '');
        totalPrecos[item.code] = parseFloat(priceWithoutCurrency);
        localStorage.setItem('carrinhoDeCompras', JSON.stringify(carrinhoDeCompras));
        atualizarCarrinho();
        atualizarTotalCarrinho();

        itemTimers[item.code] = setTimeout(function () {
            cancelarItemDoCarrinho(item);
        }, 5 * 60 * 1000);
    }

    function cancelarItemDoCarrinho(item) {
        clearTimeout(itemTimers[item.code]);
        const index = carrinhoDeCompras.indexOf(item);
        if (index > -1) {
            carrinhoDeCompras.splice(index, 1);
            delete totalPrecos[item.code];
            atualizarCarrinho();
            atualizarTotalCarrinho();
        }
        localStorage.setItem('carrinhoDeCompras', JSON.stringify(carrinhoDeCompras));
    }

    function atualizarTotalCarrinho() {
        const totalCarrinhoElement = document.getElementById('total-carrinho');
        const total = calcularTotalCarrinho();
        totalCarrinhoElement.textContent = "Total: R$" + formatarNumero(total);
    }

    function calcularTotalCarrinho() {
        let total = 0;
        for (let code in totalPrecos) {
            total += totalPrecos[code];
        }
        return total;
    }

    function fecharConta() {
        let total = calcularTotalCarrinho();

        console.log("Detalhes da Compra:");
        console.log(carrinhoDeCompras);
        console.log("Total: R$" + formatarNumero(total));

        carrinhoDeCompras = [];
        totalPrecos = {};
        localStorage.removeItem('carrinhoDeCompras');
        atualizarCarrinho();
        atualizarTotalCarrinho();
    }

    function formatarNumero(numero) {
        return parseFloat(numero).toFixed(2);
    }

    fecharContaButton.addEventListener('click', fecharConta);

    if (localStorage.getItem('carrinhoDeCompras')) {
        carrinhoDeCompras = JSON.parse(localStorage.getItem('carrinhoDeCompras'));
        carrinhoDeCompras.forEach(item => {
            totalPrecos[item.code] = parseFloat(item.price.replace(/[^\d.]/g, ''));
        });
        atualizarCarrinho();
        atualizarTotalCarrinho();
    }

    obterDadosDaAPI(url, cardapio);
});

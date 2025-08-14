const formulario = document.getElementById('form');
const elementoSaldo = document.getElementById('balance');
const elementoEntradas = document.getElementById('money-plus');
const elementoSaidas = document.getElementById('money-minus');
const elementoTransacoes = document.getElementById('transactions');

document.addEventListener('DOMContentLoaded', function () {


    formulario.addEventListener('submit', function (evento) {
      evento.preventDefault();

      const nome = document.getElementById('text').value;
      const valor = parseFloat(document.getElementById('amount').value);

      if (nome.trim() === '' || isNaN(valor)) {
        alert('Nçao deixe esse campo em branco!!');
        return;
      }

      const transacao = {
        nome: nome,
        valor: valor,
      };

      const transacoes = JSON.parse(localStorage.getItem('transacoes')) || [];

      transacoes.push(transacao);

      localStorage.setItem('transacoes', JSON.stringify(transacoes));

      atualizarSaldo();

      formulario.reset();
    });



    atualizarSaldo();
  });


  function atualizarListaDeTransacoes(transacoes) {
    elementoTransacoes.innerHTML = '';

    transacoes.forEach((transacao, index) => {
      const itemLista = document.createElement('li');
      itemLista.className = transacao.valor < 0 ? 'minus' : 'plus';
      itemLista.innerHTML = `${transacao.nome} <span>R$ ${transacao.valor.toFixed(2)}</span><button class="delete-btn">x</button>`;
      elementoTransacoes.appendChild(itemLista);

      const botaoExcluir = itemLista.querySelector('.delete-btn');
      botaoExcluir.addEventListener('click', function () {
        deletarTransacao(index);
      });
    });
  }
  
  function atualizarSaldo() {
    const transacoes = JSON.parse(localStorage.getItem('transacoes')) || [];

    const calcularTotal = (tipo) => transacoes
        .filter(transacao => tipo ? transacao.valor > 0 : transacao.valor < 0)
        .reduce((acc, transacao) => acc + transacao.valor, 0);

    const total = transacoes.reduce((acc, transacao) => acc + transacao.valor, 0);
    const entradas = calcularTotal(true);
    const saidas = calcularTotal(false);

    elementoSaldo.textContent = `R$ ${total.toFixed(2)}`;
    elementoEntradas.textContent = `+ R$ ${entradas.toFixed(2)}`;
    elementoSaidas.textContent = `- R$ ${Math.abs(saidas).toFixed(2)}`;

    atualizarListaDeTransacoes(transacoes);
}

  function deletarTransacao(index) {
    let transacoes = JSON.parse(localStorage.getItem('transacoes')) || [];
    transacoes.splice(index, 1);
    localStorage.setItem('transacoes', JSON.stringify(transacoes));
    const transactions = document.getElementById("transactions");
    const li = document.querySelectorAll("#transactions li");
    transactions.removeChild(li[index]);
    atualizarSaldo();
  }
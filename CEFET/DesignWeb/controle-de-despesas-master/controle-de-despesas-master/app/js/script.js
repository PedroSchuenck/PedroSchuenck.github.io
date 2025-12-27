const formulario = document.getElementById('form');
const elementoSaldo = document.getElementById('balance');
const elementoEntradas = document.getElementById('money-plus');
const elementoSaidas = document.getElementById('money-minus');
const elementoTransacoes = document.getElementById('transactions');

// Formatador de moeda profissional
const formatadorMoeda = new Intl.NumberFormat('pt-BR', {
    style: 'currency',
    currency: 'BRL',
});

// Busca transações do LocalStorage ou inicia vazio
let transacoes = JSON.parse(localStorage.getItem('transacoes')) || [];

function atualizarLocalStorage() {
    localStorage.setItem('transacoes', JSON.stringify(transacoes));
}

function adicionarTransacaoNoDOM(transacao, index) {
    const classeCss = transacao.valor < 0 ? 'minus' : 'plus';
    const li = document.createElement('li');

    li.classList.add(classeCss);
    li.innerHTML = `
        ${transacao.nome} 
        <span>${formatadorMoeda.format(transacao.valor)}</span>
        <button class="delete-btn" onclick="deletarTransacao(${index})">x</button>
    `;

    elementoTransacoes.appendChild(li);
}

function atualizarResumo() {
    const valores = transacoes.map(t => t.valor);
    
    const total = valores.reduce((acc, item) => acc + item, 0);
    const entradas = valores
        .filter(v => v > 0)
        .reduce((acc, item) => acc + item, 0);
    const saidas = valores
        .filter(v => v < 0)
        .reduce((acc, item) => acc + item, 0);

    elementoSaldo.textContent = formatadorMoeda.format(total);
    elementoEntradas.textContent = `+ ${formatadorMoeda.format(entradas)}`;
    elementoSaidas.textContent = `- ${formatadorMoeda.format(Math.abs(saidas))}`;
}

function renderizarApp() {
    elementoTransacoes.innerHTML = '';
    transacoes.forEach(adicionarTransacaoNoDOM);
    atualizarResumo();
}

formulario.addEventListener('submit', (e) => {
    e.preventDefault();

    const nome = document.getElementById('text').value;
    const valor = parseFloat(document.getElementById('amount').value);

    if (nome.trim() === '' || isNaN(valor)) {
        alert('Por favor, preencha o nome e o valor corretamente.');
        return;
    }

    const novaTransacao = {
        nome: nome,
        valor: valor
    };

    transacoes.push(novaTransacao);
    atualizarLocalStorage();
    renderizarApp();
    formulario.reset();
});

function deletarTransacao(index) {
    transacoes.splice(index, 1);
    atualizarLocalStorage();
    renderizarApp();
}

// Inicialização
renderizarApp();
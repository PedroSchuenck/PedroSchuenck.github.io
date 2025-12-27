// DATA: Centralizando os dados para facilitar atualizações
const PRODUTOS = [
    { id: 1, nome: "Capuccino Tradicional", preco: 13.0, desc: "Expresso, leite vaporizado e cacau premium.", img: "./assets/img/capuccino.png" },
    { id: 2, nome: "Espresso Italiano", preco: 7.0, desc: "Café intenso com aroma marcante e crema persistente.", img: "./assets/img/espresso.png" },
    { id: 3, nome: "Chococcino", preco: 16.0, desc: "Mistura densa de chocolate belga e café espresso.", img: "./assets/img/chococcino.png" },
    { id: 4, nome: "Frapuccino", preco: 18.0, desc: "Bebida gelada batida com caramelo e chantilly.", img: "./assets/img/frapuccino.png" },
    { id: 5, nome: "Bolo de Laranja", preco: 8.0, desc: "Fatia artesanal com calda cítrica natural.", img: "./assets/img/bolo_laranja.png" }
];

// ESTADO DA APLICAÇÃO
let carrinho = JSON.parse(localStorage.getItem('schuenck_cart')) || [];

// ELEMENTOS DOM
const gridProdutos = document.getElementById('grid-produtos');
const containerCarrinho = document.getElementById('cart-items');
const displayTotal = document.getElementById('cart-total');

// INICIALIZAÇÃO
document.addEventListener('DOMContentLoaded', () => {
    renderMenu();
    renderCarrinho();
    setupEvents();
});

// 1. RENDERIZAR MENU
function renderMenu() {
    gridProdutos.innerHTML = PRODUTOS.map(p => `
        <article class="item-card">
            <div class="card-img">
                <img src="${p.img}" alt="${p.nome}">
            </div>
            <div class="card-body">
                <h3>${p.nome}</h3>
                <p>${p.desc}</p>
                <button class="btn-add" onclick="adicionarAoCarrinho(${p.id})">ADICIONAR - R$ ${p.preco.toFixed(2)}</button>
            </div>
        </article>
    `).join('');
}

// 2. LÓGICA DO CARRINHO
window.adicionarAoCarrinho = (id) => {
    const produto = PRODUTOS.find(p => p.id === id);
    carrinho.push(produto);
    salvarCarrinho();
};

function renderCarrinho() {
    containerCarrinho.innerHTML = carrinho.length === 0 
        ? '<p style="color:#999; font-style:italic">Nenhum item adicionado.</p>'
        : carrinho.map((item, index) => `
            <div class="cart-item">
                <span>${item.nome}</span>
                <strong>R$ ${item.preco.toFixed(2)}</strong>
            </div>
        `).join('');

    const total = carrinho.reduce((acc, item) => acc + item.preco, 0);
    displayTotal.innerText = `R$ ${total.toFixed(2)}`;
}

function salvarCarrinho() {
    localStorage.setItem('schuenck_cart', JSON.stringify(carrinho));
    renderCarrinho();
}

// 3. EVENTOS (LINKS E BOTÕES)
function setupEvents() {
    // Botão Limpar
    document.getElementById('btn-limpar').addEventListener('click', () => {
        if(confirm("Deseja remover todos os itens do pedido?")) {
            carrinho = [];
            salvarCarrinho();
        }
    });

    // Botão Finalizar
    document.getElementById('btn-finalizar').addEventListener('click', () => {
        if(carrinho.length === 0) return alert("Adicione itens antes de finalizar.");
        alert("Pedido enviado com sucesso para a cozinha!");
        carrinho = [];
        salvarCarrinho();
    });

    // Navegação (Simulada)
    document.querySelectorAll('.menu-links a').forEach(link => {
        link.addEventListener('click', (e) => {
            e.preventDefault();
            document.querySelectorAll('.menu-links a').forEach(a => a.classList.remove('active'));
            link.classList.add('active');
            console.log(`Navegando para: ${link.dataset.link}`);
        });
    });
}
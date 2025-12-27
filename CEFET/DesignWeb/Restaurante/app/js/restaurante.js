document.addEventListener("DOMContentLoaded", function () {
    // --- Dados do Cardápio ---
    const cardapioItens = [
        // Entradas (B)
        { code: "B1", photo: "images/menu/B/B1.jpg", price: "$ 3.00", name: "Beef Egg Roll", details: "eggroll with cabbage, carrots and beef" },
        { code: "B2", photo: "images/menu/B/B2.jpg", price: "$ 3.00", name: "Spring Roll (1)", details: "thin wraps with white meat and cabbage" },
        { code: "B3", photo: "images/menu/B/B3.jpg", price: "$ 2.25", name: "Vegetable Egg Roll (1)", details: "cabbage and carrots in eggroll wrappers" },
        { code: "B4", photo: "images/menu/B/B4.jpg", price: "$ 6.25", name: "Fried Won Ton", details: "triangle shaped won ton with ground white meat chicken inside" },
        { code: "B5", photo: "images/menu/B/B5.jpg", price: "$ 6.25", name: "Chicken Toast (4)", details: "ground chicken meat on bread, deep-fried, comes with 4 pieces" },
        { code: "B6", photo: "images/menu/B/B6.jpg", price: "$ 5.95", name: "Fried Silky Tofu", details: "4 large tofu cubes, breaded and deep-fried, with garlic sauce on the side" },
        { code: "B12", photo: "images/menu/B/B12.jpg", price: "$ 7.95", name: "Teriyaki Beef (6)", details: "6 pieces of beef on skewers with teriyaki sauce" },
        { code: "B15", photo: "images/menu/B/B15.jpg", price: "$ 18.95", name: "Pu Pu Platter", details: "2 spring egg rolls, 2 fried won tons, 2 BBQ ribs, 2 chicken toast, 2 teriyaki beef" },
        
        // Sopas (A)
        { code: "A1", photo: "images/menu/A/A1.jpg", price: "$2.55", name: "Won Ton Soup", details: "chicken-stuffed won tons in clear chicken broth" },
        { code: "A2", photo: "images/menu/A/A2.jpg", price: "$2.25", name: "Egg Drop Soup", details: "chicken broth with egg drop" },
        { code: "A4", photo: "images/menu/A/A4.jpg", price: "$2.55", name: "Hot and Sour Soup", details: "tofu, chicken, mushroom, bamboo shoot, and egg" },
        { code: "A10", photo: "images/menu/A/A10.jpg", price: "$4.25", name: "Hong Kong Won Ton Soup", details: "clear chicken broth with carrots, mushrooms, snow peas" },

        // Frango (C) 
        { code: "C1", photo: "images/menu/C/C1.jpg", price: "$10.95", title: "Orange Chicken", details: "chunks of chicken, breaded and deep-fried with sauce containing orange peels" },
        { code: "C2", photo: "images/menu/C/C2.jpg", price: "$10.95", title: "General Tso's Chicken", details: "chunks of chicken, breaded and deep-fried with sauce and scallions" },
        { code: "C7", photo: "images/menu/C/C7.jpg", price: "$10.95", title: "Sesame Chicken", details: "chunks of chicken, breaded and deep-fried with a sesame seed sauce" },
        { code: "C10", photo: "images/menu/C/C10.jpg", price: "$10.95", title: "Kung Pao Chicken", details: "diced chicken sauteed with peanuts, and celery in delicious kung pao sauce" },
        { code: "C15", photo: "images/menu/C/C15.jpg", price: "$10.95", title: "Sweet and Sour Chicken", details: "white meat chicken, breaded and fried with some green pepper, onion, and pineapples" },

        // Carne (F)
        { code: "F1", photo: "images/menu/F/F1.jpg", price: "$11.45", name: "Beef Broccoli", details: "sliced beef sauteed with broccoli in brown sauce" },
        { code: "F9", photo: "images/menu/F/F9.jpg", price: "$11.45", name: "Kung Pao Beef", details: "sliced beef sauteed with peanuts and celery in delicious Kung Pao sauce" },
        { code: "F10", photo: "images/menu/F/F10.jpg", price: "$11.45", name: "Mongolian Beef", details: "sliced beef sauteed with bamboo shoots, onions, and green onions in chef's sauce" },

        // Pato e Vitela (DK e V)
        { code: "DK1", photo: "images/menu/DK/DK1.jpg", price: "$28.95", name: "Peking Duck", details: "marinated duck roasted crisp and served with pancake and green onion" },
        { code: "V5", photo: "images/menu/V/V5.jpg", price: "$12.45", name: "Mongolian Veal", details: "veal sauteed with onions, green onions, and bamboo shoots in chef's sauce" },

        // Vegetais (VG)
        { code: "VG1", photo: "images/menu/VG/VG1.jpg", price: "$9.45", name: "Wok's Mixed Vegetables", details: "broccoli, carrots, baby corn, water chestnuts, mushrooms" },
        { code: "VG3", photo: "images/menu/VG/VG3.jpg", price: "$9.45", name: "Eggplant in Garlic Sauce", details: "eggplant sauteed with water chestnuts and string beans in garlic sauce" },
        
        // Especiais (SP)
        { code: "SP2", photo: "images/menu/SP/SP2.jpg", price: "$18.95", name: "Teriyaki Chicken", details: "marinated grilled chicken breast with vegetables and lo mein on the side" },
        { code: "SP7", photo: "images/menu/SP/SP7.jpg", price: "$19.95", name: "Orange Beef", details: "a few cuts of beef, breaded, deep-fried with sauce containing orange peels" },

        // Sobremesas (DS)
        { code: "DS1", photo: "images/menu/DS/DS1.jpg", price: "$4.25", name: "Chocolate Truffle Cake", details: "rich chocolate cake slice" },
        { code: "DS2", photo: "images/menu/DS/DS2.jpg", price: "$4.25", name: "Cappuccino Apricot Cake", details: "coffee flavored cake with apricot" },

        // Noodles (NL, NF, PF)
        { code: "NL5", photo: "images/menu/NL/NL5.jpg", price: "$11.95", name: "House Special Lo Mein", details: "white meat chicken, beef, veal, onions, and bean sprouts" },
        { code: "NF13", photo: "images/menu/NF/NF13.jpg", price: "$17.95", name: "House Special Mei Fan", details: "white meat chicken, beef, and veal sauteed with onions and bean sprouts" },
        { code: "PF2", photo: "images/menu/PF/PF2.jpg", price: "$16.45", name: "Pan Fried Noodles Chicken", details: "white meat chicken sauteed with broccoli on crispy noodles" }
    ];

    const IMAGE_BASE_URL = "https://rafaelescalfoni.github.io/desenv_web/restaurante/";
    const PLACEHOLDER_IMG = "https://placehold.co/400x300/eee/999?text=Schuenck+Food"; 
    
    // Elementos DOM
    const divCardapio = document.getElementById("cardapio");
    const listaCarrinho = document.getElementById("lista-carrinho");
    const totalCarrinhoElement = document.getElementById("total-carrinho");
    const cartCountElement = document.getElementById("cart-count");
    const modal = document.getElementById("cart-modal");
    const btnOpenCart = document.getElementById("cart-btn");
    const btnCloseCart = document.getElementById("close-modal-btn");
    const btnFecharConta = document.getElementById("fechar-conta");
    const msgEmptyCart = document.getElementById("empty-cart-msg");
    const toast = document.getElementById("toast");

    // Estado da Aplicação
    let carrinho = JSON.parse(localStorage.getItem('carrinhoSchuenck')) || [];

    // --- Inicialização ---
    function init() {
        renderizarCardapio(cardapioItens);
        atualizarInterfaceCarrinho();
        setupEventListeners();
    }

    // --- 1. Lógica "Inteligente" para Nomes Faltantes ---
    function gerarNomeInteligente(descricao) {
        if (!descricao) return "Prato Especial";
        const palavras = descricao.replace(/[.,;]/g, '').split(' ');
        return palavras.slice(0, 3)
            .map(p => p.charAt(0).toUpperCase() + p.slice(1))
            .join(' ');
    }

    function extrairPreco(precoString) {
        if (typeof precoString === 'number') return precoString;
        if (!precoString) return 0;

        let semHtml = precoString.toString().replace(/<[^>]*>?/gm, '');
        
        const match = semHtml.match(/[\d\.]+/);
        
        return match ? parseFloat(match[0]) : 0;
    }

    // --- Renderização ---
    function renderizarCardapio(itens) {
        divCardapio.innerHTML = "";
        
        itens.forEach(item => {
            let nomeItem = item.name || item.title;
            if (!nomeItem) {
                nomeItem = gerarNomeInteligente(item.details);
            }
            const precoNumerico = extrairPreco(item.price);

            let urlImagem = item.photo ? item.photo : "";
            if (urlImagem && !urlImagem.startsWith('http')) {
                urlImagem = IMAGE_BASE_URL + urlImagem;
            }
            if (!urlImagem) urlImagem = PLACEHOLDER_IMG;

            const card = document.createElement('div');
            card.classList.add("card-item");
            
            card.innerHTML = `
                <div class="card-img-container">
                    <img src="${urlImagem}" alt="${nomeItem}" onerror="this.onerror=null;this.src='${PLACEHOLDER_IMG}';">
                </div>
                <div class="card-content">
                    <h3>${nomeItem}</h3>
                    <p class="card-details">${item.details || "Sem descrição disponível."}</p>
                    <div class="card-footer">
                        <span class="price">${formatarMoeda(precoNumerico)}</span>
                        <button class="add-btn">
                            Adicionar <i class="fa-solid fa-plus"></i>
                        </button>
                    </div>
                </div>
            `;
            
            // Evento
            const btn = card.querySelector('.add-btn');
            btn.addEventListener('click', () => adicionarAoCarrinho(item.code, precoNumerico, nomeItem));
            
            divCardapio.appendChild(card);
        });
    }

    // --- Carrinho ---
    function adicionarAoCarrinho(codigo, preco, nome) {
        const itemExistente = carrinho.find(i => i.code === codigo);

        if (itemExistente) {
            itemExistente.quantidade++;
        } else {
            carrinho.push({
                code: codigo,
                name: nome,
                price: preco,
                quantidade: 1
            });
        }
        salvarCarrinho();
        atualizarInterfaceCarrinho();
        mostrarToast(`"${nome}" adicionado!`);
    }

    function removerDoCarrinho(codigo) {
        carrinho = carrinho.filter(item => item.code !== codigo);
        salvarCarrinho();
        atualizarInterfaceCarrinho();
    }

    function alterarQuantidade(codigo, delta) {
        const item = carrinho.find(i => i.code === codigo);
        if (item) {
            item.quantidade += delta;
            if (item.quantidade <= 0) {
                removerDoCarrinho(codigo);
            } else {
                salvarCarrinho();
                atualizarInterfaceCarrinho();
            }
        }
    }

    function atualizarInterfaceCarrinho() {
        listaCarrinho.innerHTML = "";
        
        if (carrinho.length === 0) {
            msgEmptyCart.style.display = "block";
        } else {
            msgEmptyCart.style.display = "none";
            
            carrinho.forEach(item => {
                const li = document.createElement('li');
                li.innerHTML = `
                    <div class="item-info">
                        <span class="item-name">${item.name}</span>
                        <span class="item-price">${formatarMoeda(item.price * item.quantidade)}</span>
                    </div>
                    <div class="item-controls">
                        <button class="qty-btn minus">-</button>
                        <span>${item.quantidade}</span>
                        <button class="qty-btn plus">+</button>
                        <button class="remove-btn"><i class="fa-solid fa-trash"></i></button>
                    </div>
                `;

                li.querySelector('.plus').addEventListener('click', () => alterarQuantidade(item.code, 1));
                li.querySelector('.minus').addEventListener('click', () => alterarQuantidade(item.code, -1));
                li.querySelector('.remove-btn').addEventListener('click', () => removerDoCarrinho(item.code));

                listaCarrinho.appendChild(li);
            });
        }

        const total = carrinho.reduce((acc, item) => acc + (item.price * item.quantidade), 0);
        const qtd = carrinho.reduce((acc, item) => acc + item.quantidade, 0);

        totalCarrinhoElement.textContent = formatarMoeda(total);
        cartCountElement.textContent = qtd;
    }

    function fecharConta() {
        if (carrinho.length === 0) {
            alert("Seu carrinho está vazio!");
            return;
        }
        const total = carrinho.reduce((acc, item) => acc + (item.price * item.quantidade), 0);
        alert(`Pedido Confirmado!\nTotal: ${formatarMoeda(total)}\n\nObrigado por comprar no Schuenck Food!`);
        carrinho = [];
        salvarCarrinho();
        atualizarInterfaceCarrinho();
        fecharModal();
    }

    // --- Utils ---
    function formatarMoeda(valor) {
        return new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(valor);
    }
    function salvarCarrinho() { localStorage.setItem('carrinhoSchuenck', JSON.stringify(carrinho)); }
    function abrirModal() { modal.classList.add("active"); }
    function fecharModal() { modal.classList.remove("active"); }
    function mostrarToast(msg) {
        toast.textContent = msg;
        toast.classList.add("show");
        setTimeout(() => toast.classList.remove("show"), 3000);
    }

    function setupEventListeners() {
        btnOpenCart.addEventListener('click', abrirModal);
        btnCloseCart.addEventListener('click', fecharModal);
        modal.addEventListener('click', (e) => { if (e.target === modal) fecharModal(); });
        btnFecharConta.addEventListener('click', fecharConta);
    }

    init();
});
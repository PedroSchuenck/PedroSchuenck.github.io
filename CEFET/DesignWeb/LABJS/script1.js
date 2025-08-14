let result = document.getElementById("result");
const produtos = [
    { nome: 'Laptop', preco: 1000, quantidade: 5 },
    { nome: 'Mouse', preco: 20, quantidade: 10 },
    { nome: 'Teclado', preco: 30, quantidade: 8 }
  ];
  
  const calcularValorTotalEstoque = produtos => {
    let valorTotal = 0;
    produtos.forEach(produto => {
      valorTotal += produto.preco * produto.quantidade;
    });
    return valorTotal;
  };
  
  const valorTotal = calcularValorTotalEstoque(produtos);
  
  result.innerHTML = `Valor total do estoque: ${valorTotal}`;
  
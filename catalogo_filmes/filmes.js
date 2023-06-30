
  async function getFilmes() {
    try {
      const response = await fetch('https://rafaelescalfoni.github.io/desenv_web/filmes.json');
      const filmes = await response.json();

      let filmesHTML = '';

      filmes.forEach(filme => {
        let divOpiniao = document.createElement('div');
        let filmesDiv = document.createElement('div');
        filmesHTML += '<div class="filme">';
        filmesHTML += '<img src="' + filme.figura + '" alt="' + filme.titulo + '" class="imagem">';
        filmesHTML += '<h2 class="titulo">' + filme.titulo + '</h2>';
        filmesHTML += '<p class="campo-titulo">Resumo do filme:</p>';
        filmesHTML += '<p class="resumo">' + filme.resumo + '</p>';
        filmesHTML += '<p class="campo-titulo">Gêneros:</p>';
        filmesHTML += '<p class="generos">' + filme.generos + '</p>';
        filmesHTML += '<p class="campo-titulo">Títulos Semelhantes:</p>';
        filmesHTML += '<p class="titulos-semelhantes">' + filme.titulosSemelhantes + '</p>';
        filmesHTML += '<p class="campo-titulo">Classificação:</p>';
        filmesHTML += '<p class="classificacao">' + filme.classificacao + '</p>';
        filmesHTML += '<p class="faixa-etaria faixa-' + getClassificacaoCor(filme.classificacao) + '"></p>';
        filmesHTML += '<p class="campo-titulo">Elenco:</p>';
        filmesHTML += '<p class="elenco">' + (filme.elenco || '') + '</p>';
        filmesHTML += '<p class="campo-titulo">Opiniões:</p>';
        filme.opinioes.forEach(opiniao => {
          filmesHTML += '<div id="opinioes-rating">' + getRatingEstrelas(opiniao.rating) + ' ' + opiniao.descricao + '</div>';
        });
        filmesHTML += '</div>';
      });

      function getClassificacaoCor(classificacao) {
        if (classificacao <= 14) {
          return 'verde';
        } else if (classificacao > 14 && classificacao < 18) {
          return 'amarelo';
        } else {
          return 'vermelho';
        }
      }

      function getRatingEstrelas(numeroEstrelas) {
        const inteiro = Math.floor(numeroEstrelas);
        const decimal = numeroEstrelas - inteiro;
        let estrelas = '';
        for (let i = 0; i < inteiro; i++) {
          estrelas += '<i class="bi bi-star-fill"></i>';
        }
        if (decimal >= 0.5) {
          estrelas += '<i class="bi bi-star-half"></i>';
        }
        return estrelas;
      }
      
      const domFilmes = document.getElementById('filmes');
      domFilmes.innerHTML = filmesHTML;
    } catch (error) {
      console.error('Ocorreu um erro ao buscar os filmes:', error);
    }
  }

  getFilmes();



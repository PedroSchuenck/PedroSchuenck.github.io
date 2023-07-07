let domDiv = document.getElementById('filmes');
let https = new XMLHttpRequest();
let url = "https://rafaelescalfoni.github.io/desenv_web/filmes.json";
https.open('GET', url);
https.send();
https.onreadystatechange = function() {
        if (https.readyState === 4 && https.status === 200) {
            let resposta = https.responseText;
            let filmes = JSON.parse(resposta);
            filmes.forEach((filme, index) => {
            let button = document.createElement('button');
            button.setAttribute('class', 'btn-img');
            button.addEventListener('click', function() {
                showModal(filme, filmes);
        });

            let divImg = document.createElement('div');
            divImg.setAttribute('class', 'divImg');

            let img = document.createElement('img');
            img.setAttribute('class', 'img');
            img.setAttribute('src', filme.figura);

            divImg.appendChild(img);
            button.appendChild(divImg);
            domDiv.appendChild(button);

        function showModal(filme, filmes) {
            let modal = document.createElement('div');
            modal.setAttribute('class', 'modal fade');
            modal.setAttribute('id', 'exampleModal');
            modal.setAttribute('tabindex', '-1');
            modal.setAttribute('aria-labelledby', 'exampleModalLabel');
            modal.setAttribute('aria-hidden', 'true');
            
            let modalDialog = document.createElement('div');
            modalDialog.setAttribute('class', 'modal-dialog modal-dialog-centered');
            let modalContent = document.createElement('div');
            modalContent.setAttribute('class', 'modal-content');
            
            let modalHeader = document.createElement('div');
            modalHeader.setAttribute('class', 'modal-header');
            let modalTitle = document.createElement('h5');
            modalTitle.setAttribute('class', 'modal-title');
            modalTitle.innerHTML = filme.titulo;
            let closeButton = document.createElement('button');
            closeButton.setAttribute('type', 'button');
            closeButton.setAttribute('class', 'btn-close');
            closeButton.setAttribute('data-bs-dismiss', 'modal');
            closeButton.setAttribute('aria-label', 'Close');
            
            modalHeader.appendChild(modalTitle);
            modalHeader.appendChild(closeButton);
            
            let modalBody = document.createElement('div');
            modalBody.setAttribute('class', 'modal-body');
            let resumo = document.createElement('p');
            resumo.innerHTML = "<strong>Resumo:</strong> " + filme.resumo;
            let genero = document.createElement('p');
            genero.innerHTML = "<strong>Gênero:</strong> " + filme.generos;
            let titulosSemelhantes = document.createElement('p');
            titulosSemelhantes.innerHTML = "<strong>Títulos Semelhantes:</strong> ";
                
        filme.titulosSemelhantes.forEach(indice => {
            let Imgtitulos = document.createElement('img');
            let tituloSemelhante = filmes[indice - 1].figura;
            Imgtitulos.setAttribute('src', tituloSemelhante);
            Imgtitulos.setAttribute('class', 'imgTitulos');
            titulosSemelhantes.appendChild(Imgtitulos);
        });
            
            let classificacao = document.createElement('p');
            classificacao.innerHTML = "<strong>Classificação:</strong> " + (filme.classificacao === 0 ? "Livre" : filme.classificacao);
            let faixaEtariaClass = getFaixaEtariaClass(filme.classificacao);
            classificacao.classList.add(faixaEtariaClass);
        
            let elenco = document.createElement('p');
            elenco.innerHTML = "<strong>Elenco:</strong> " + filme.elenco.join(", ");
            let opinioes = document.createElement('p');
            opinioes.innerHTML = "<strong>Opiniões:</strong> ";
        
            let ratingDiv = document.createElement('div');
            ratingDiv.innerHTML = "<strong>Classificação Estrelar:</strong> ";
            let rating = document.createElement('span');
            let averageRating = getAverageRating(filme.opinioes);
            rating.innerHTML = getStarRating(averageRating);
            ratingDiv.appendChild(rating);
        
        filme.opinioes.forEach(opiniao => {
            let opiniaoString = "<br>Rating: " + opiniao['rating'] +
            "<br>Descrição: " + opiniao['descricao'];
            opinioes.innerHTML += opiniaoString + "<br>";
        });
        
            modalBody.appendChild(resumo);
            modalBody.appendChild(genero);
            modalBody.appendChild(titulosSemelhantes);
            modalBody.appendChild(classificacao);
            modalBody.appendChild(elenco);
            modalBody.appendChild(opinioes);
            modalBody.appendChild(ratingDiv);
        
            modalContent.appendChild(modalHeader);
            modalContent.appendChild(modalBody);
            modalDialog.appendChild(modalContent);
            modal.appendChild(modalDialog);
        
            document.body.appendChild(modal);
        
            let modalInstance = new bootstrap.Modal(modal);
            modalInstance.show();
            }
            
        function getFaixaEtariaClass(classificacao) {
            if (classificacao >= 18) {
                return "faixa-etaria-vermelho";
            } else if (classificacao > 14) {
                return "faixa-etaria-amarelo";
            } else {
                return "faixa-etaria-verde";
            }
        }
            
        function getAverageRating(opinioes) {
            if (opinioes.length === 0) {
            return 0;
            }
            
            let totalRating = opinioes.reduce((sum, opiniao) => sum + opiniao.rating, 0);
            return totalRating / opinioes.length;
        }
            
        function getStarRating(rating) {
            let stars = "";
            let fullStars = Math.floor(rating);
            let halfStar = rating - fullStars >= 0.5;

            for (let i = 0; i < fullStars; i++) {
                    stars += "&#9733;"; // Código HTML para uma estrela cheia
                }

            if (halfStar) {
                stars += "&#9733;&#189;"; // Código HTML para uma estrela cortada ao meio
                } else {
                for (let i = fullStars; i < 5; i++) {
                    stars += "&#9734;"; // Código HTML para uma estrela vazia
                }
                }

                return stars;

}
});


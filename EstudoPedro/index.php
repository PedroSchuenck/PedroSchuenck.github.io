<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Teste PHP</title>
</head>
<body id="div-body">
    <header class="cabecalho">
        <h1>Calcula IMC PHP</h1>
        <h2>Refazendo Exercício com switch</h2>
    </header>
    <main class="principal">
        <div id="conteudo">
            <div id="div-form">
                <form id="form" action="processaDados.php" method="post">
                    <h2 class="title-form">Insira Seus Dados</h2>
                    <div>
                        <label for="username">Digite Seu Nome:</label>
                        <input id="username" name="username" placeholder="Ex: Pedro, Lucas..." maxlength="20" type="text" required>
                    </div>
                    <div>
                        <label for="peso">Digite Seu Peso (KG): </label>
                        <input type="number" name="peso" id="peso" class="peso-altura" step="0.01" placeholder="Ex: 50">
                    </div>
                    <div>
                        <label for="altura">Digite Sua Altura (M):</label>
                        <input type="number" name="altura" id="altura" class="peso-altura" step="0.1" placeholder="Ex: 1,76">
                    </div>
                    <div id="div-buttons">
                        <input type="submit" class="bg-success text-white" value="Enviar">
                        <input type="reset" class="bg-danger text-white" value="limpar">
                    </div>
                </form>
            </div>
        </div>
    </main>
    <footer class="rodape">
        <p id="direitos-reservados">Todos os direitos reservados - Pedro Schuenck ©️ </p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
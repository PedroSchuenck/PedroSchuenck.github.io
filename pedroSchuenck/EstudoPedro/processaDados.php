
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/processa.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Teste PHP</title>
</head>
<body id="div-body">
    <header class="cabecalho">
        <h1>Resultado IMC PHP</h1>
        <h2>Refazendo Exercício com switch</h2>
    </header>
    <main class="principal">
        <div id="conteudo">
           <?php
            include "funcoes.php";
            if(isset($_POST['username']) && isset($_POST['peso']) && isset($_POST['altura'])){
                $nome = $_POST['username'];
                $peso = floatval($_POST['peso']);
                $altura = floatval($_POST['altura']);
                $resultGrau = "";
                $grau = 0;
                indicaGrauImc($peso, $altura, $grau);
                processaGrauImc($grau, $resultGrau);
                echo "<p id='resultado'>$resultGrau</p>";
            }
            else{
                echo "Erro de verificação das variáveis!";
            }
            ?>
        </div>
    </main>
    <footer class="rodape">
        <p id="direitos-reservados">Todos os direitos reservados - Pedro Schuenck ©️ </p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
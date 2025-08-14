const buscarPrevisaoTempo = async cidade => {
    const apiKey = '442924cb24fe8028fbe334c42e8581b0';
    const apiUrl = `https://api.openweathermap.org/data/2.5/weather?q=${cidade}&appid=${apiKey}&units=metric`;
  
    try {
      const response = await fetch(apiUrl);
  
      if (!response.ok) {
        throw new Error('Cidade não encontrada ou problema na solicitação');
      }
  
      const data = await response.json();
      return data;
    } catch (error) {
      throw error;
    }
  }
  

  document.addEventListener('DOMContentLoaded', function () {
    const buttonBuscar = document.getElementById('buscar');
    const inputCidade = document.getElementById('cidade');
    const divResultado = document.getElementById('resultado');
  

    buttonBuscar.addEventListener('click', async function () {
      const cidade = inputCidade.value;
  
      try {
  
        const dados = await buscarPrevisaoTempo(cidade);
        console.log('Dados da previsão do tempo:', dados);

        divResultado.innerText = `Previsão: ${dados.weather[0].description} | Temperatura: ${dados.main.temp}°C`;
      } catch (erro) {
        console.error('Erro ao buscar previsão do tempo:', erro);

        divResultado.innerText = erro.message || 'Erro ao buscar a previsão do tempo.';
      }
    });
  });
  
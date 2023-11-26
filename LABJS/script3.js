let result = document.getElementById("result");
async function enviarComentario(comentario) {
  try {

    result.innerHTML = `Enviando comentário:, ${comentario}`;
    await new Promise(resolve => setTimeout(resolve, 1000));
    alert('Comentário enviado com sucesso.');
  } catch (erro) {
    alert('Erro ao enviar comentário:', erro);
    throw erro;
  }
}
enviarComentario('Este é um ótimo artigo!')

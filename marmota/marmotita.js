let score = 0; // pontuação inicial
let timeUp = false; // indica se o tempo acabou
let lastHole; // último buraco de onde a marmota apareceu

// gera um número aleatório para escolher o buraco onde a marmota irá aparecer
function randomTime(min, max) {
  return Math.round(Math.random() * (max - min) + min);
}

// seleciona um buraco aleatório que não seja o último onde a marmota apareceu
function randomHole(holes) {
  const idx = Math.floor(Math.random() * holes.length);
  const hole = holes[idx];
  if (hole === lastHole) {
    return randomHole(holes);
  }
  lastHole = hole;
  return hole;
}

// faz a marmota aparecer e desaparecer em um buraco aleatório
function peep() {
  const time = randomTime(200, 1000); // tempo em que a marmota fica visível
  const hole = randomHole(holes);
  hole.classList.add('up');
  setTimeout(() => {
    hole.classList.remove('up');
    if (!timeUp) {
      peep();
    }
  }, time);
}

// inicia o jogo
function startGame() {
  scoreBoard.textContent = 0;
  score = 0;
  timeUp = false;
  peep(); // faz a primeira marmota aparecer
  setTimeout(() => timeUp = true, 10000); // tempo total do jogo (10 segundos)
}

// quando a marmota é clicada, incrementa a pontuação e esconde a marmota
function bonk(e) {
  if (!e.isTrusted) return; // evita trapaças
  score++;
  this.parentNode.classList.remove('up');
  scoreBoard.textContent = score;
}

// adiciona um evento de clique em cada marmota
moles.forEach(mole => mole.addEventListener('click', bonk));

// adiciona um evento de clique no botão "Start!"
const startBtn = document.querySelector('button');
startBtn.addEventListener('click', startGame);
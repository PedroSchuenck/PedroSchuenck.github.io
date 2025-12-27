// CONFIGURAÇÕES TMDB
const API_KEY = 'api_key=cb8e3e8f324bb814977298395b2c18f5';
const BASE_URL = 'https://api.themoviedb.org/3';
const IMG_ORIGINAL = 'https://image.tmdb.org/t/p/original';
const IMG_CARD = 'https://image.tmdb.org/t/p/w500';

const gridContainer = document.getElementById('grid-container');
const heroBanner = document.getElementById('hero-banner');
const modalElement = document.getElementById('movieModal');
const navbar = document.getElementById('navbar');

document.addEventListener('DOMContentLoaded', () => {
    init();

    window.addEventListener('scroll', () => {
        if (window.scrollY > 50) navbar.classList.add('scrolled');
        else navbar.classList.remove('scrolled');
    });

    modalElement.addEventListener('hidden.bs.modal', () => {
        document.getElementById('videoContainer').innerHTML = `
            <div id="videoPlaceholder" class="placeholder-img">
                <img id="modalImg" src="" alt="">
                <div class="gradient-overlay"></div>
            </div>`;
    });
});

async function init() {
    setupSearch();
    createGenreTags();

    const movies = await fetchMovies(`${BASE_URL}/movie/popular?${API_KEY}&language=pt-BR`);
    renderGrid(movies);

    if (movies.length > 0) {
        setupHero(movies[Math.floor(Math.random() * 5)]);
    }
}

function setupSearch() {
    const form = document.getElementById('form-pesquisa');
    const input = document.getElementById('input-pesquisa');

    form.addEventListener('submit', async (e) => {
        e.preventDefault(); // Impede recarregamento da página
        const query = input.value.trim();
        
        if (query) {
            const searchUrl = `${BASE_URL}/search/movie?${API_KEY}&language=pt-BR&query=${encodeURIComponent(query)}`;
            const filmes = await fetchMovies(searchUrl);
            renderGrid(filmes);
            document.querySelector('.section-title').innerText = `Resultados para: "${query}"`;
            
            window.scrollTo({ top: heroBanner.offsetHeight - 100, behavior: 'smooth' });
        }
    });
}

function getOrCreateModal(element) {
    let instance = bootstrap.Modal.getInstance(element);
    if (!instance) instance = new bootstrap.Modal(element);
    return instance;
}

async function openModal(movieId, autoPlay = false) {
    try {
        const modal = getOrCreateModal(modalElement);

        const response = await fetch(`${BASE_URL}/movie/${movieId}?${API_KEY}&language=pt-BR&append_to_response=videos,credits`);
        const movie = await response.json();

        document.getElementById('modalTitle').innerText = movie.title;
        document.getElementById('modalResumo').innerText = movie.overview || "Sinopse não disponível.";
        document.getElementById('modalYear').innerText = movie.release_date ? movie.release_date.split('-')[0] : 'N/A';
        document.getElementById('modalMatch').innerText = `${Math.round(movie.vote_average * 10)}% Relevante`;
        document.getElementById('modalGeneros').innerText = movie.genres?.map(g => g.name).join(', ') || "N/A";
        document.getElementById('modalElenco').innerText = movie.credits?.cast.slice(0, 5).map(c => c.name).join(', ') || "N/A";

        const videoContainer = document.getElementById('videoContainer');
        const imgUrl = movie.backdrop_path ? `${IMG_ORIGINAL}${movie.backdrop_path}` : `${IMG_CARD}${movie.poster_path}`;

        // Lógica do Trailer YouTube
        const trailer = movie.videos?.results.find(v => v.site === 'YouTube' && (v.type === 'Trailer' || v.type === 'Teaser'));

        if (trailer) {
            videoContainer.innerHTML = `<iframe src="https://www.youtube.com/embed/${trailer.key}?autoplay=1&mute=0&rel=0" allow="autoplay; encrypted-media" allowfullscreen></iframe>`;
        } else {
            videoContainer.innerHTML = `
                <div class="placeholder-img">
                    <img src="${imgUrl}" alt="${movie.title}">
                    <div class="gradient-overlay"></div>
                </div>`;
        }

        modal.show();
    } catch (error) {
        console.error("Erro ao carregar detalhes:", error);
    }
}

async function fetchMovies(url) {
    const res = await fetch(url);
    const data = await res.json();
    return data.results || [];
}

function renderGrid(movies) {
    gridContainer.innerHTML = '';
    movies.forEach(movie => {
        if (!movie.poster_path) return;
        const card = document.createElement('div');
        card.className = 'movie-card';
        card.innerHTML = `<img src="${IMG_CARD}${movie.poster_path}" alt="${movie.title}" loading="lazy">`;
        card.onclick = () => openModal(movie.id);
        gridContainer.appendChild(card);
    });
}

function setupHero(movie) {
    const img = movie.backdrop_path ? `${IMG_ORIGINAL}${movie.backdrop_path}` : `${IMG_ORIGINAL}${movie.poster_path}`;
    heroBanner.style.backgroundImage = `url('${img}')`;
    document.getElementById('hero-title').innerText = movie.title;
    document.getElementById('hero-desc').innerText = movie.overview;
    document.getElementById('btn-hero-play').onclick = () => openModal(movie.id, true);
    document.getElementById('btn-hero-info').onclick = () => openModal(movie.id, false);
}

function createGenreTags() {
    const tags = document.getElementById('tags-container');
    const genres = [{id: 28, name: "Ação"}, {id: 35, name: "Comédia"}, {id: 27, name: "Terror"}, {id: 878, name: "Ficção"}, {id: 16, name: "Animação"}];
    tags.innerHTML = '';
    genres.forEach(g => {
        const div = document.createElement('div');
        div.className = 'genre-tag';
        div.innerText = g.name;
        div.onclick = async () => {
            const data = await fetchMovies(`${BASE_URL}/discover/movie?${API_KEY}&language=pt-BR&with_genres=${g.id}`);
            renderGrid(data);
            document.querySelector('.section-title').innerText = `Gênero: ${g.name}`;
        };
        tags.appendChild(div);
    });
}
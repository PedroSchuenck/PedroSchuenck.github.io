document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById('materialForm');
    const tabela = document.getElementById('tabelaRegistros');
    const msgVazio = document.getElementById('vazio-msg');
    const totalBadge = document.getElementById('total-pendencias');
    const inputData = document.getElementById('input-data');

    // 1. Injeta Data Atual no Input
    const hoje = new Date().toISOString().split('T')[0];
    inputData.value = hoje;

    // 2. Banco de dados Local (Simulado)
    let db = JSON.parse(localStorage.getItem('sedis_registros')) || [];

    // 3. Função de Renderização (Core UI)
    const render = () => {
        tabela.innerHTML = '';
        totalBadge.innerText = db.length;

        if (db.length === 0) {
            msgVazio.classList.remove('d-none');
            document.getElementById('tabela-main').classList.add('d-none');
        } else {
            msgVazio.classList.add('d-none');
            document.getElementById('tabela-main').classList.remove('d-none');

            db.forEach((item, index) => {
                const tr = document.createElement('tr');
                tr.innerHTML = `
                    <td class="fw-bold">${item.aluno}</td>
                    <td><span class="badge bg-primary-subtle text-primary border border-primary-subtle px-3">${item.material}</span></td>
                    <td><span class="text-secondary small">${item.turma}</span></td>
                    <td class="text-end">
                        <button class="btn btn-success btn-action" onclick="finishItem(${index})">
                            <i class="fa-solid fa-check-to-slot me-1"></i> Devolvido
                        </button>
                    </td>
                `;
                tabela.appendChild(tr);
            });
        }
    };

    // 4. Registrar Novo Empréstimo
    form.addEventListener('submit', (e) => {
        e.preventDefault();

        const novoRegistro = {
            aluno: document.getElementById('input-nome').value,
            material: document.getElementById('select-material').value,
            data: document.getElementById('input-data').value,
            turma: document.getElementById('select-curso').value
        };

        db.push(novoRegistro);
        localStorage.setItem('sedis_registros', JSON.stringify(db));
        
        render();
        form.reset();
        inputData.value = hoje;
    });

    // 5. Devolver Material (Excluir)
    window.finishItem = (pos) => {
        // Efeito de feedback visual antes de deletar (opcional)
        if(confirm("Confirmar a devolução do material selecionado?")) {
            db.splice(pos, 1);
            localStorage.setItem('sedis_registros', JSON.stringify(db));
            render();
        }
    };

    // Inicialização da tela
    render();
});
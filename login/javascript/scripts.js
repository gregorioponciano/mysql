           // Abrir e fechar modais cadastro e login
const btnCadastro = document.getElementById('btnCadastro');
const btnLogin = document.getElementById('btnLogin');
const modalCadastro = document.getElementById('modalCadastro');
const modalLogin = document.getElementById('modalLogin');
const closeCadastro = document.getElementById('closeCadastro');
const closeLogin = document.getElementById('closeLogin');
const toLogin = document.getElementById('toLogin');
const toCadastro = document.getElementById('toCadastro');

btnCadastro.onclick = () => modalCadastro.classList.add('show');
btnLogin.onclick = () => modalLogin.classList.add('show');
closeCadastro.onclick = () => modalCadastro.classList.remove('show');
closeLogin.onclick = () => modalLogin.classList.remove('show');

toLogin.onclick = () => {
    modalCadastro.classList.remove('show');
    modalLogin.classList.add('show');
};

toCadastro.onclick = () => {
    modalLogin.classList.remove('show');
    modalCadastro.classList.add('show');
};

              // modal lateral


function menulateral() {
    var menuBurg = document.getElementById('menu-lateral');

    menuBurg.classList.add('move')
}
document.addEventListener('DOMContentLoaded', () => {
    const menu = document.querySelector('#nav-icon');
    const ul = document.querySelector('.group-list-item');
    menu.addEventListener('click', () => {
        menu.classList.toggle('open');
        if (menu.classList.contains('open')) {
            ul.classList.add('slide-show');
            return;
        }
        ul.classList.remove('slide-show');
    })
})















/*span.forEach(spans => {
    spans.addEventListener('click', () => {
        spans.classList.toggle('open');
    })
})*/


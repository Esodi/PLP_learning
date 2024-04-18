const form = document.querySelector('form');
const input = document.querySelector('input');
const list = document.querySelector('ul');

function anEvent (event) {
    event.preventDefault();
    const item = document.createElement('li');
    item.innerText = input.value;
    list.appendChild(item);
    input.value = ''
}
form.addEventListener('submit', anEvent);
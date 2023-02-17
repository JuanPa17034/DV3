var miCheckbox = document.querySelector("#check");
var prueba = document.querySelector(".principal header ul");
document.querySelector('.botonJj').addEventListener('click', ()=>{
    prueba.style.transition = "0s";
    miCheckbox.checked = false;
})
window.addEventListener('scroll', function(){
    prueba.style.transition = "0s";
    miCheckbox.checked = false;
});
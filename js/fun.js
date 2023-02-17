/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */



let variable;
window.onload = async function ff() {
    const {value: email} = await Swal.fire({
        title: 'Ingrese la nueva cantidad',
        input: 'number',
        inputPlaceholder: '12345'
    })
    
        variable = email;
    
    console.log(document.getElementById("ensayoCantidad").value);
    let variable2 = document.getElementById("codif").value;
    document.getElementById("ensayoCantidad").value = variable;
    console.log(document.getElementById("ensayoCantidad").value);
    location.href = 'Controlador?cantidadEditar=' + variable + '&codif=' + variable2 + '&accion=editarEste';
}
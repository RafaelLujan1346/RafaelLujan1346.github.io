// Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
    'use strict'
  
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    const forms = document.querySelectorAll('.needs-validation')
  
    // Loop over them and prevent submission
    Array.from(forms).forEach(form => {
      form.addEventListener('submit', event => {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }
  
        form.classList.add('was-validated')
      }, false)
    })
  })()
//alerta cuando se guarda sin completar los campos//
  document.getElementById("btnSave").onclick=(event)=>{
    event.preventDefault()//evita recargar la pagina
    document.getElementById("form").classList.add('was-validated')
    document.querySelector("#divAlerta").classList.remove("d-none")
    Swal.fire({
        icon: "error",
        title: "Oops...",
        text: " Algo salió mal, Favor de llenar todos los campos",
        //footer: '<a href="#">Por favor llena todos los campos</a>'
       });
    }
//alerta para editar campos//
document.getElementById("btnEdit1").onclick=(event)=>{
  event.preventDefault()//evita recargar la pagina
  document.getElementById("form2").classList.add('was-validated')
  document.querySelector("#divAlerta2").classList.remove("d-none")
  Swal.fire({
      icon: "error",
      title: "Oops...",
      text: " Algo salió mal, Favor de llenar todos los campos",
      //footer: '<a href="#">Por favor llena todos los campos</a>'
       });
    }
//alerta al eliminar//
function mostrarAlerta(){
  Swal.fire({
      icon: "question",
      title: "!ADVERTENCIA!",
      text: "¿Estas seguro de querer eliminar este registro?"
    });
}
//editar//
document.getElementById("btnEdit1").onclick=(event)=>{
  event.preventDefault()//evita recargar la pagina
  Swal.fire({
    title: "¿Quieres Guardar los cambios?",
    showDenyButton: true,
    showCancelButton: true,
    confirmButtonText: "Guardar",
    denyButtonText: `No guardar`
  }).then((result) => {
    /* Read more about isConfirmed, isDenied below */
    if (result.isConfirmed) {
      const form = document.querySelector('#form2')
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
        Swal.fire({
          icon: "error",
          title: "Oops...",
          text: " Algo salió mal, Favor de llenar todos los campos",
          //footer: '<a href="#">Por favor llena todos los campos</a>'
         });
      }else{
        Swal.fire("Datos guardaos correctamente!", "", "success");
      }
      form.classList.add('was-validated')
      
    } else if (result.isDenied) {
      Swal.fire("Changes are not saved", "", "info");
    }
  });
}
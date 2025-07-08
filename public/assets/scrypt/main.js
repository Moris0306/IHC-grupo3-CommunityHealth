// -------------------- MENÚ HAMBURGUESA --------------------
const btn = document.querySelector(".menu-toggle");
const menu = document.querySelector(".menu-horizontal");

if (btn && menu) {
  btn.addEventListener("click", () => {
    menu.classList.toggle("active");
  });
}

// -------------------- VALIDACIÓN FORMULARIO GENERAL --------------------
const formGeneral = document.querySelector('form[name="frm"]');
if (formGeneral) {
  formGeneral.addEventListener("submit", (event) => {
    const fname = formGeneral.elements["fname"].value;
    const flastname = formGeneral.elements["flastname"].value;
    const femail = formGeneral.elements["femail"].value;
    const fphone = formGeneral.elements["fphone"].value;

    if (!fname || !flastname || !femail || !fphone) {
      event.preventDefault();
      alert("Por favor, complete todos los campos del formulario");
    } else if (!validateEmail(femail)) {
      event.preventDefault();
      alert("Por favor, ingrese un correo valido");
    } else {
      const confirmation = confirm(
        "Está a punto de enviar el formulario, ¿Desea continuar?"
      );
      if (!confirmation) {
        event.preventDefault();
      }
    }
  });

  function validateEmail(femail) {
    const re = /^[a-zA-Z0-9._]+@[a-zA-Z]+\.[a-zA-Z]/;
    return re.test(String(femail).toLowerCase());
  }
}

// -------------------- VALIDACIÓN DE VERIFICACIÓN DE MEDICAMENTO --------------------
document.addEventListener("DOMContentLoaded", () => {
  const form = document.getElementById("registroForm");
  const mensajeError = document.getElementById("mensajeError");

  if (form) {
    form.addEventListener("submit", function (event) {
      event.preventDefault(); // Prevenir envío por defecto

      const fechaVencimiento =
        document.getElementById("fechaVencimiento").value;
      const hoy = new Date();
      hoy.setHours(0, 0, 0, 0);
      const fechaIngresada = new Date(fechaVencimiento);

      if (fechaIngresada < hoy) {
        mensajeError.textContent =
          "⚠️ El medicamento está vencido. No se puede registrar.";
        mensajeError.style.display = "block";
      } else {
        mensajeError.style.display = "none";
        // Redirigir con mensaje de éxito
        window.location.href = "verificacion.html?exito=1";
      }
    });
  }
});

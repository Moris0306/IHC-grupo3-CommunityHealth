Feature: Registro de nuevo usuario

  Scenario: Usuario se registra en la plataforma
    Given que un nuevo usuario está en la pestaña de "Acceder"
    And ve las opciones "Ingresar" o "Crear cuenta"
    When selecciona "Crear cuenta"
    Then se muestra un formulario que solicita nombre, DNI, correo y rol
    And se le pide validar el correo con un código enviado

  Scenario: El sistema valida que el correo no esté previamente registrado
    Given que el usuario completa el formulario
    When ingresa un correo ya registrado
    Then el sistema muestra un mensaje de error indicando que el correo ya existe

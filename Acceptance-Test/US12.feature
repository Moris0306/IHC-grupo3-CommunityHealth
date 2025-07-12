Feature: Inicio de sesión de usuario

  Scenario: Usuario inicia sesión con sus credenciales
    Given que un usuario está en la pestaña de "Acceder"
    When selecciona "Ingresar"
    Then debe escribir su correo y contraseña
    And si olvidó la contraseña, ve la opción de recuperarla

  Scenario: Acceso denegado con credenciales incorrectas
    Given que el usuario escribe un correo o contraseña incorrectos
    When intenta iniciar sesión
    Then el sistema muestra un mensaje de error indicando que las credenciales no son válidas

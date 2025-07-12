Feature: Inicio de sesión de usuario

  Scenario: Usuario inicia sesión con sus credenciales
    Given que un usuario está en la pestaña de "Acceder"
    When selecciona "Ingresar"
    Then debe escribir su correo y contraseña
    And si olvidó la contraseña, ve la opción de recuperarla
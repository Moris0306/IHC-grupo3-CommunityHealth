Feature: Actualización de perfil de usuario

  Scenario: Usuario actualiza sus datos personales
    Given que el usuario está en la pestaña de "Mi cuenta"
    When selecciona la opción "modificar mis datos"
    Then el sistema verifica si la cuenta ha sido autenticada para modificar datos
    And si está autenticado, los casilleros de datos están vacíos y listos para editar
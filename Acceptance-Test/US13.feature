Feature: Actualización de perfil de usuario

  Scenario: Usuario actualiza sus datos personales
    Given que el usuario está en la pestaña de "Mi cuenta"
    When selecciona la opción "modificar mis datos"
    Then el sistema verifica si la cuenta ha sido autenticada
    And si está autenticado, los campos están listos para editar

  Scenario: El sistema guarda los cambios correctamente
    Given que el usuario modificó sus datos
    When presiona "Guardar"
    Then el sistema actualiza la información y muestra un mensaje de confirmación

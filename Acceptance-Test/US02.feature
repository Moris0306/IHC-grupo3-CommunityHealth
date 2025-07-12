Feature: Edición de datos de un medicamento

  Como donante,
  Quiero editar los datos de un medicamento aún no validado
  Para corregir errores antes de ser revisado.

  Scenario: Editar nombre y dosis de un medicamento pendiente
    Given que el usuario accede a su lista de donaciones pendientes
    When selecciona un medicamento y edita el nombre y la dosis
    Then el sistema actualiza los datos del medicamento
    And registra el cambio en el historial de modificaciones

  Scenario: Intento de edición de medicamento validado
    Given que el usuario intenta editar un medicamento validado
    When selecciona la opción de edición
    Then el sistema bloquea la acción
    And muestra un mensaje que indica que ya fue validado

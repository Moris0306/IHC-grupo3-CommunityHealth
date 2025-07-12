Feature: Eliminación de donación

  Como donante,
  Quiero eliminar una donación registrada antes de que sea validada
  Para poder conservarla si aún la necesito.

  Scenario: Eliminación exitosa de medicamento pendiente
    Given que el medicamento aún no ha sido validado
    When el usuario selecciona "Eliminar"
    Then el sistema solicita confirmación
    And al confirmar, elimina la donación y muestra un mensaje de éxito

  Scenario: Intento de eliminación tras validación
    Given que el medicamento ya ha sido validado
    When el usuario intenta eliminarlo
    Then el sistema impide la acción
    And le sugiere contactar a soporte si hay un problema grave

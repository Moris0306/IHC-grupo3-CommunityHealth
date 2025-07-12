Feature: Registro de medicamento

  Como donante,
  Quiero registrar un medicamento
  Para que pueda ser validado y donado.

  Scenario: Registro exitoso de medicamento no vencido
    Given que el usuario quiere registrar una donación
    When el sistema verifica que el medicamento no ha caducado
    Then el sistema le pide rellenar un formulario con su nombre, dosis, fecha de vencimiento y foto
    And guarda el medicamento con estado "pendiente de validación"
    And muestra una confirmación al usuario

  Scenario: Registro fallido por medicamento vencido
    Given que el usuario quiere registrar una donación
    When el sistema detecta que el medicamento está vencido
    Then el sistema bloquea el registro
    And muestra un mensaje de error explicando la causa

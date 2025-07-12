Feature: Agregar observación médica
  Como profesional, quiero añadir observaciones al medicamento validado.

  Scenario: Añadir observaciones después de la validación
    Given que el profesional de la salud validó medicamentos
    When desea agregar observaciones
    Then el sistema le permite modificar el registro para añadir observaciones
Feature: Agregar observación médica
  Como profesional, quiero añadir observaciones al medicamento validado,
  para registrar información adicional relevante para su redistribución.

  Scenario: Agregar una observación a un medicamento validado
    Given que el medicamento ya fue validado
    When el profesional hace clic en "Agregar observación"
    Then el sistema debe mostrar un formulario para escribir la observación
    And al guardar, la observación debe quedar registrada junto al medicamento

  Scenario: Visualizar observaciones guardadas
    Given que existen observaciones médicas registradas
    When otro profesional accede al detalle del medicamento
    Then el sistema debe mostrar todas las observaciones previas

Feature: Rechazo de medicamento por malas condiciones

  Scenario: Profesional de la salud rechaza un medicamento por mal estado
    Given que el profesional de la salud observa que el medicamento no cumple las condiciones de conservación
    When está en la pestaña "Reportes"
    Then puede rechazar el medicamento sustentando el motivo
    And el donante recibe una notificación inmediata
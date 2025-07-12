Feature: Rechazo de medicamento por malas condiciones

  Scenario: Profesional rechaza un medicamento por no cumplir condiciones
    Given que el profesional observa que el medicamento no cumple condiciones
    When está en la pestaña "Reportes"
    Then puede rechazar el medicamento indicando el motivo
    And el donante recibe una notificación inmediata

  Scenario: Se bloquea el rechazo sin justificación
    Given que el profesional desea rechazar un medicamento
    When no ingresa una razón válida
    Then el sistema impide enviar el rechazo y solicita una justificación

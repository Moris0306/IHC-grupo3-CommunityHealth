Feature: Validar medicamento
  Como profesional, quiero aprobar o rechazar medicamentos registrados.

  Scenario: Validar medicamentos desde la pestaña de reportes
    Given que el profesional de la salud va a aprobar o rechazar medicamentos
    When ingresa a la pestaña de reportes
    Then el sistema muestra la información brindada por el donante
    And le pide justificar el rechazo o la aprobación de la donación
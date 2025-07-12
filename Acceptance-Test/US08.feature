Feature: Validar medicamento
  Como profesional de la salud, quiero aprobar o rechazar medicamentos registrados,
  para asegurar que solo se redistribuyan medicamentos seguros y aptos.

  Scenario: Visualizar reporte de medicamento a validar
    Given que el profesional accede a la pestaña de reportes
    When selecciona un medicamento para validar
    Then el sistema debe mostrar la información registrada por el donante
    And debe mostrar botones para "Aprobar" o "Rechazar"
    And debe permitir justificar la decisión tomada

  Scenario: Justificación obligatoria al rechazar medicamento
    Given que el profesional decide rechazar un medicamento
    When hace clic en "Rechazar"
    Then el sistema debe solicitar una justificación antes de confirmar

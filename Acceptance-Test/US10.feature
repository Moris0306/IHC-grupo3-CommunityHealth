Feature: Ver lista de medicamentos pendientes
  Como profesional, quiero ver todos los medicamentos que aún no han sido validados.

  Scenario: Filtrar medicamentos por estado de validación
    Given que el profesional de la salud está en la pestaña de “Solicitudes”
    When filtra por estado de validación
    Then el sistema le permite ordenar por fecha de registro o tipo de medicamento
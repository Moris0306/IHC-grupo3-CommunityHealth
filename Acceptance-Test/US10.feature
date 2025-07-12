Feature: Ver lista de medicamentos pendientes
  Como profesional, quiero ver todos los medicamentos que aún no han sido validados,
  para priorizar su revisión y garantizar su disponibilidad segura.

  Scenario: Ver medicamentos pendientes por validar
    Given que el profesional accede a la pestaña de "Solicitudes"
    When elige filtrar por estado "pendiente"
    Then el sistema debe mostrar una lista de medicamentos no validados
    And debe permitir ordenarlos por fecha de ingreso o tipo de medicamento

  Scenario: Filtro de búsqueda por tipo de medicamento
    Given que el profesional está en la lista de pendientes
    When escribe un nombre de medicamento en el campo de búsqueda
    Then el sistema debe mostrar solo los resultados que coincidan

Feature: Buscar medicamentos disponibles
  Como receptor, quiero buscar medicamentos según mis necesidades,
  para encontrar rápidamente los medicamentos que necesito.

  Scenario: Visualizar medicamentos validados en la pestaña correspondiente
    Given que el receptor desea buscar medicamentos
    When accede a la pestaña de "Medicamentos"
    Then el sistema debe mostrar la lista de medicamentos validados disponibles

  Scenario: Filtrar medicamentos por nombre, dosis y cercanía
    Given que el receptor está visualizando la lista de medicamentos
    When utiliza los filtros disponibles
    Then puede filtrar por nombre del medicamento
    And por dosis
    And por cercanía a su ubicación

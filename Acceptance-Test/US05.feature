Feature: Buscar medicamentos disponibles
  Como receptor, quiero buscar medicamentos según mis necesidades.

  Scenario: Buscar medicamentos desde la pestaña “Medicamentos”
    Given que el receptor quiere buscar medicamentos según sus necesidades
    When ingresa a la pestaña de “Medicamentos”
    Then la pestaña le muestra los medicamentos validados
    And le permite filtrar por nombre, dosis y cercanía
Feature: Notificación de uso adecuado del medicamento

  Scenario: Receptor recibe recomendaciones sobre el uso correcto del medicamento
    Given que el receptor está en la pestaña "Medicamentos"
    When selecciona "Más información sobre el uso de medicamentos"
    Then el sistema le da acceso a las alertas para recibir recomendaciones
    And sugiere el tipo de medicamento que busca
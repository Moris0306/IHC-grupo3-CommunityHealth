Feature: Notificación de uso adecuado del medicamento

  Scenario: Receptor recibe recomendaciones sobre el uso del medicamento
    Given que el receptor está en la pestaña "Medicamentos"
    When selecciona "Más información sobre el uso de medicamentos"
    Then el sistema le da acceso a alertas y recomendaciones

  Scenario: Recomendaciones se adaptan al tipo de medicamento
    Given que el receptor busca información
    When selecciona un medicamento específico
    Then el sistema muestra recomendaciones relacionadas con ese tipo de medicamento

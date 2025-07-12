Feature: Información sobre el impacto de desechar medicamentos

  Scenario: Usuario accede a consejos y datos sobre reciclaje de medicamentos
    Given que el usuario desea informarse sobre el impacto de desechar medicamentos
    When ingresa a la pestaña "Impacto"
    Then visualizará los consejos y datos organizados por tema
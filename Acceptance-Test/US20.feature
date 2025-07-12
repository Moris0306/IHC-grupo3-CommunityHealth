Feature: Información sobre el impacto de desechar medicamentos

  Scenario: Usuario accede a consejos sobre reciclaje
    Given que el usuario desea informarse sobre el impacto de desechar medicamentos
    When ingresa a la pestaña "Impacto"
    Then visualiza consejos y datos organizados por tema

  Scenario: Usuario filtra los consejos por categoría
    Given que el usuario está viendo los datos en la pestaña "Impacto"
    When selecciona una categoría de interés
    Then el sistema muestra solo los consejos relacionados con esa categoría

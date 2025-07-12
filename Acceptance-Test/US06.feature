Feature: Solicitar medicamento
  Como receptor, quiero solicitar un medicamento disponible.

  Scenario: Solicitar medicamento con perfil validado
    Given que el receptor quiere solicitar medicamentos
    When el sistema verifica el perfil del usuario
    Then le permite realizar la solicitud
    And muestra el estado del pedido
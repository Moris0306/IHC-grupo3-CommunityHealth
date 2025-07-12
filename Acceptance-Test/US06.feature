Feature: Solicitar medicamento
  Como receptor, quiero solicitar un medicamento disponible,
  para poder acceder al tratamiento que necesito.

  Scenario: Solicitud de medicamento con perfil verificado
    Given que el receptor quiere solicitar medicamentos
    And el sistema ya verificó su perfil
    When selecciona un medicamento disponible
    Then el sistema le permite confirmar la solicitud
    And muestra el estado del pedido después de enviarla

  Scenario: Bloqueo de solicitud si el perfil no está verificado
    Given que el receptor no ha completado su verificación
    When intenta solicitar un medicamento
    Then el sistema le muestra un mensaje indicando que debe verificar su perfil antes

Feature: Feedback sobre el medicamento recibido

  Scenario: Receptor consulta comentarios de otros usuarios sobre un medicamento
    Given que el receptor está en la pestaña "Comunidad"
    When filtra el tema por medicamento
    Then se mostrarán los comentarios de usuarios sobre el medicamento en cuestión
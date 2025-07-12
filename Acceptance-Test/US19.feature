Feature: Feedback sobre el medicamento recibido

  Scenario: Receptor consulta comentarios de otros usuarios
    Given que el receptor está en la pestaña "Comunidad"
    When filtra el tema por medicamento
    Then se muestran los comentarios de usuarios sobre ese medicamento

  Scenario: Receptor deja su propio comentario
    Given que el receptor ya usó el medicamento
    When escribe un comentario en la comunidad
    Then el sistema guarda el comentario y lo muestra públicamente

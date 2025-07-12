Feature: Visualización de historial de donaciones

  Como donante,
  Quiero ver un historial de mis donaciones
  Para saber a quién ayudé.

  Scenario: Visualización detallada del historial
    Given que el usuario ingresa al historial de donaciones
    When el sistema carga las donaciones pasadas
    Then muestra el nombre del medicamento, fecha de donación y estado
    And permite dejar una reseña si la entrega fue completada

  Scenario: Historial vacío
    Given que el usuario no ha realizado donaciones aún
    When accede a la sección de historial
    Then el sistema muestra un mensaje: “Aún no has donado medicamentos.”

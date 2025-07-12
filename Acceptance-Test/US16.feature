Feature: Verificación de condiciones de conservación del medicamento

  Scenario: Profesional de la salud verifica si el medicamento fue almacenado correctamente
    Given que el profesional de la salud está en la pestaña "Validación"
    When verifica la condición de almacenamiento
    Then puede marcar la donación como "En óptimas condiciones" o "Condición dudosa"
Feature: Verificación de condiciones de conservación del medicamento

  Scenario: Profesional de la salud verifica condiciones de almacenamiento
    Given que el profesional está en la pestaña "Validación"
    When revisa la condición de almacenamiento
    Then puede marcar como "En óptimas condiciones" o "Condición dudosa"

  Scenario: Sistema bloquea la aprobación si no se evalúan las condiciones
    Given que el profesional no ha seleccionado una condición
    When intenta continuar
    Then el sistema solicita completar la evaluación

Feature: Selección de punto de recojo cercano

  Scenario: Receptor elige un lugar para recoger medicamentos
    Given que el receptor ingresa al apartado "Medicamentos"
    When activa la opción "modificar mis datos"
    Then el sistema verifica que tenga activa la opción "Ubicación"
    And si está activa, muestra los puntos cercanos en un mapa

  Scenario: Mostrar mensaje si la ubicación está desactivada
    Given que el receptor tiene desactivada la ubicación
    When intenta ver puntos de recojo
    Then el sistema le solicita activar la ubicación

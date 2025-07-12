Feature: Ver estado de mi solicitud
  Como receptor, quiero revisar el estado de mis solicitudes de medicamentos,
  para saber si fueron aceptadas, rechazadas, están pendientes o ya fueron entregadas.

  Scenario: Estado de solicitud visible después de solicitar medicamentos
    Given que el receptor ha realizado una solicitud de medicamentos
    When accede a la sección "Mis solicitudes"
    Then el sistema debe mostrar el listado de solicitudes realizadas
    And cada solicitud debe mostrar uno de estos estados: pendiente, aceptado, rechazado o entregado
    And debe mostrar los detalles del medicamento asociado a cada solicitud

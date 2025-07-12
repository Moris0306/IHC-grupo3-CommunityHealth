Feature: Ver estado de mi solicitud
  Como receptor, quiero revisar el estado de mis solicitudes de medicamentos.

  Scenario: Visualizar estado de solicitudes realizadas
    Given que el receptor realizó la solicitud de medicamentos
    When quiere revisar el estado de sus solicitudes
    Then el sistema muestra uno de cuatro estados: pendiente, aceptado, rechazado o entregado
    And muestra los detalles del medicamento
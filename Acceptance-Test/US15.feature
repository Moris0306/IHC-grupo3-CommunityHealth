Feature: Confirmación de retiro del medicamento

  Scenario: Receptor confirma que recibió el medicamento correctamente
    Given que el receptor recibe su medicamento
    And quiere verificar la correcta entrega
    When ingresa a "Solicitudes"
    Then puede verificar si su entrega coincide con el reporte generado en el sistema
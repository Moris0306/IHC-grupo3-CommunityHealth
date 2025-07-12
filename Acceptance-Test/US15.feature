Feature: Confirmación de retiro del medicamento

  Scenario: Receptor confirma que recibió el medicamento correctamente
    Given que el receptor recibe su medicamento
    When ingresa a "Solicitudes"
    Then puede verificar si su entrega coincide con el reporte generado en el sistema

  Scenario: El sistema muestra un mensaje de confirmación
    Given que el receptor valida la coincidencia del medicamento
    When presiona "Confirmar retiro"
    Then el sistema registra la confirmación y muestra un mensaje exitoso

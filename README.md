## StateChart de un Sensor-Sistema

El sistema maneja la detección de vehículos, la solicitud y emisión de tickets, el control de la barrera y la gestión de indicadores luminosos (LEDs), siguiendo una secuencia de estados para garantizar el flujo adecuado en un entorno como un estacionamiento o acceso controlado.

### EVENTOS

- EV_SYST_DETECTED_CAR: Detecta la presencia de un vehículo.
- EV_NO_CAR_DETECTED: No se detecta ningún vehículo.
- EV_SYST_BUTTON_PRESSED: El botón para solicitar un ticket es presionado.
- EV_SYST_TICKET_TAKEN: El ticket emitido ha sido retirado.
- EV_SYST_TICKET_NOT_TAKEN: El ticket no ha sido retirado.
- EV_SYST_BARRIER_UP: La barrera está completamente arriba.
- EV_SYST_BARRIER_DOWN: La barrera está completamente abajo.
- EV_SYST_CAR_PASSED: El vehículo ha pasado la barrera.
- EV_SYST_CAR_NOT_PASSED: El vehículo no ha pasado la barrera.

### ACCIONES:

- **raise** EV_LED_01_TURN_ON / TURN_OFF: Enciende o apaga el LED indicador.
- **raise** EV_LED_01_BLINKING_ON / OFF: Activa o desactiva el parpadeo del LED.
- **raise** EV_LED_01_PULSE_ON / OFF: Inicia o detiene un pulso en el LED.
- **raise** EV_LED_01_PULSE_DCYCLE_ON: Activa un pulso de distinto DCYCLE en el LED.
- **raise** EV_LED_01_TWO_PULSES_ON / OFF: Activa o desactiva dos pulsos en el LED.
- prevent_double_raise = 0 / 1: Establece la condición para evitar que se active la misma acción dos veces seguidas.

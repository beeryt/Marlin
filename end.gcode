; end.gcode
    M104 S0                     ; Turn off hotend heater
    M140 S0                     ; Turn off bed heater
    G91                         ; Use relative positioning
    G1 E-{retraction_amount}    ; Retract filament to prevent oozing
    G0 Z10                      ; Raise nozzle above print
    G28 X Y                     ; Return to origin
    M18                         ; Disable stepper motors
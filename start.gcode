; start.gcode
    M140 S{material_bed_temperature}    ; Start bed heating
    G90                                 ; Use absolute positioning
    M107                                ; Turn off cooling fan
    G28 O                               ; Home axes if needed
    G29 L                               ; Load last mesh
    G29 J                               ; Probe & tilt mesh
    G29 A                               ; Activate mesh bed levelling
    G0 X10 Y10 Z0.2                     ; Park near origin
    M104 S{material_print_temperature}  ; Start hotend heating
    M190 S{material_bed_temperature}    ; Wait for bed heating
    M109 S{material_print_temperature}  ; Wait for hotend heating
    G92 E0                              ; Reset extruder position
    G1 X100 E10                         ; Prime the nozzle
    G92 E0                              ; Reset extruder position
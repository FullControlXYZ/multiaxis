; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v3.3.16 on Tue Nov 28 2023 13:41:44 GMT+0000 (Greenwich Mean Time)
G91              ; Set to relative positioning
G1 H2 Z5 F6000   ; Lift Z-axis relative to current position
G1 H1 X-305 F1800  ; Move quickly to X-axis endstop and stop there (first pass)
G1 X10 F6000     ; Move away from the endstop
G1 H1 X-315 F360 ; Move slowly to X-axis endstop once more (second pass)
G1 H2 Z-5 F6000  ; Lower Z-axis again
G90              ; Set to absolute positioning


; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.3.16 on Fri Nov 17 2023 19:59:21 GMT+0000 (Greenwich Mean Time)
G91                       ; relative positioning
G1 H2 Z3 F6000            ; lift Z relative to current position
G1 H1 X-255 Y-215 F1000.2 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 H2 X5 Y5 F6000         ; go back a few mm
G1 H1 X-255 Y-215 F199.8  ; move slowly to X and Y axis endstops once more (second pass)
G90                       ; absolute positioning
G1 X-8 Y10 F6000          ; go to first bed probe point and home Z
G30                       ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
;G91                      ; relative positioning
;G1 Z3 F100               ; lift Z relative to current position
;G90                      ; absolute positioning



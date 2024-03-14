; homex.g
; called to home the X axis
;

M913 X50 Y50 Z100 ; set X Y Z motors to 50% of their normal current

G91                 ; relative positioning
G1 H2 Z3 F6000      ; lift Z relative to current position
G1 H1 X-255 F4800   ; move quickly to X axis endstop and stop there
G1 H2 X5 F6000      ; go back a few mm
G1 H1 X-255 F4800   ; move quickly to X axis endstop and stop there
G1 H2 X5 F6000      ; go back a few mm
G1 H2 Z-3 F6000     ; lower Z again
G90                 ; absolute positioning

G1 X20 F4800		; Altering X home to prevent damage of nozzle tilt during B rotation
G92 X0 				; Homing X 

M913 X100 Y100 Z100 ; set X Y Z motors to 100% of their normal current
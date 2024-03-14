; homey.g
; called to home the Y axis

M913 X50 Y50 Z100 ; set X Y Z motors to 50% of their normal current

G91                 ; relative positioning
G1 H2 Z3 F6000      ; lift Z relative to current position
G1 H1 Y-255 F4800   ; move quickly to Y axis endstop and stop there
G1 H2 Y5 F6000      ; go back a few mm
G1 H1 Y-255 F4800   ; move quickly to Y axis endstop and stop there
G1 H2 Y5 F6000      ; go back a few mm
G1 H2 Z-3 F6000     ; lower Z again
G90                 ; absolute positioning

G1 Y29 F4800		;Altering Y to move to print bed area using grid as reference  
G92 Y0

M913 X100 Y100 Z100 ; set X Y Z motors to 100% of their normal current


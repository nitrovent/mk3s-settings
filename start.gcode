M115 U3.7.1 ; tell printer latest fw version
G90 ; use absolute coordinates
M83  ; extruder relative mode
M140 S[first_layer_bed_temperature] ; set bed temp
M109 S160 ; Set extruder temp before bed level
M190 S[first_layer_bed_temperature] ; wait for bed temp

G28 W ; home all without mesh bed level
G80 ; mesh bed leveling

M109 S[first_layer_temperature] ; wait for extruder temp

G1 Y-3.0 F1000.0 ; go outside print area
G92 E0.0
G1 E8 ; Purge Bubble
G1 X60.0 E9.0  F1000.0 ; intro line
G1 X100.0 E12.5  F1000.0 ; intro line
G92 E0.0
M221 S{if layer_height<0.075}100{else}95{endif}

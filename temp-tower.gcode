;Paste this snippet into the 'After layer change G-Code' section
;in 'Printer settings' -> 'Custom G-Code'.
;Set print to 220°C.
;Heights are for https://www.thingiverse.com/thing:2430797

;AFTER_LAYER_CHANGE
;[layer_z]

{if layer_z==13}M104 S215{endif}
{if layer_z==23}M104 S210{endif}
{if layer_z==33}M104 S205{endif}
{if layer_z==43}M104 S200{endif}
{if layer_z==53}M104 S195{endif}
{if layer_z==63}M104 S190{endif}

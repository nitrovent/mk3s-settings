# mk3s-settings
Collection of personal settings and custom gcode for the Original Prusa MK3S 3D printer

License is MIT as stated in the `LICENSE` for all files that do contain their own license.

## start.gcode

Custom start code that has some advantages over the default:

* Places the nozzle just above the bed while heating so filament cannot ooze out and curl up the nozzle
* Uses full  bed temp but just 160°C for mesh leveling. This also helps to reduce oozing.
* Print a purge bubble and a thick purge line to fill the nozzle and clean it.

Taken from https://github.com/eoprede/prusa_profiles/blob/master/MK3/Slic3r/Pretty%20PLA%20V3.ini

## end.gcode 

Also taken from the pretty pla profile.
Use with `start.gcode`.

## temp-tower.gcode

Custom after layer change G-Code for a heat tower.
Don't forget to remove the snippet before printing regular objects.

Heights are for https://www.thingiverse.com/thing:2430797.


use<animals.scad>
use<expansions.scad>
use<player.scad>
use<resources.scad>
use<stalls.scad>

animals();

translate([0, 104 + 1, 0]) {
		expansions();
}

translate([84 + 1, 104 + 1, 0]) {
		player();
}

translate([84 + 1, 104 + 1 + 44 + 1 , 0]) {
		player();
}


translate([84 + 44 + 1 + 1, 0, 0]) {
		resources();
}

translate([84 + 44 + 1 + 1, 150 + 1, 0]) {
		stalls_and_borders();
}

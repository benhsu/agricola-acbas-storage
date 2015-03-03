
use<animals.scad>
use<expansions.scad>
use<player.scad>
use<rest.scad>

animals();

translate([0, 104 + 1, 0]) {
		expansions();
}

translate([84 + 1, 104 + 1, 0]) {
		player();
}

translate([84 + 1, 104 + 1 + 44 , 0]) {
		player();
}


translate([84 + 44 + 1 + 1, 0, 0]) {
		rest();
}

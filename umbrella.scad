
use<animals.scad>
use<expansions.scad>
use<player.scad>
use<resources.scad>
use<stalls.scad>

// outline of the box
%cube([193, 193, 45]);

// the 2 player boards and the shared board
// 2 layers = 5mm
// put this at the bottom to make coding easier
// in actuality it will go at the top
#cube([193, 193, 10]);

translate([0,0, 10]) {
		animals();

		translate([104, 104, 0]) {
				expansions();
		}

		translate([129 + 1, 0, 0]) {
				stalls_and_borders();
		}

		translate([129 + 1, 42 +  1.2 + 1.2 + 1, 0]) {
		 		player();
		}

		translate([129 + 1, 42 +  1.2 + 1.2 + 1 + 29, 0]) {
		 		player();
		}



		translate([0, 104, 0]) {
				resources();
		}


}
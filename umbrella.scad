
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
%cube([193, 193, 10]);

translate([0,0, 10]) {

		expansions();

		translate([0, 135 + 1, 0]) {
				stalls_and_borders();
		}

		translate([44+1, 0, 0]) {
				animals();
		}

		translate([44 + 1, 103 + 1, 0]) {
		 		player();
		}

		translate([44 + 1, 103 + 1 + 44 + 1, 0]) {
		 		player();
		}

		translate([44 + 1 + 30 + 1, 103 + 1, 0]) {
				resources();
		}


}
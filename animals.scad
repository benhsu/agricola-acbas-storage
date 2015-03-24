wall = 1.2;

floor = 1.2;

use<notch.scad>;

module animals() {
		difference() {

				cube([129, 103, 35]);
				translate([wall, wall, floor]) {
						cube([60, 54, 39]);
				}
				translate([wall, 2*wall + 54, floor]) {
						cube([60, 44.6, 39]);
				}
				translate([2*wall + 60, 2*wall + 54, floor]) {
						cube([64.6, 44.6, 39]);
				}
				translate([2*wall + 60, wall , floor]) {
						cube([64.6, 54, 39]);
				}
				// make inner walls shorter than outer walls to fit scorepad in
				translate([wall, wall, 32]) {
						cube([129 - 2 * wall, 103 - 2 * wall, 4]);
				}
		}
}

animals();
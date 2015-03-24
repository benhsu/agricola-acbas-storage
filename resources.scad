wall = 1.2;

floor = 20;

use<notch.scad>;

module resources() {
		difference() {

				cube([104, 89, 35]);
				translate([wall, wall, floor]) {
						cube([60,   50, 39]);
				}
				translate([wall, 2*wall + 50, floor]) {
						cube([60,   35.4, 39]);
				}
				translate([2*wall + 60, 2*wall + 50, floor]) {
						cube([40.4, 35.4, 39]);
				}
				translate([2*wall + 60, wall , floor]) {
						cube([40.4, 50, 39]);
				}
		}
}

resources();
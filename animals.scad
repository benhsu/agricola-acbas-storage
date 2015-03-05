wall = 2;

use<notch.scad>

module animals() {
		difference() {

				cube([129, 103, 32]);
				translate([wall, wall, wall]) {
						cube([60, 54, 38]);
				}
				translate([wall, 2*wall + 54, wall]) {
						cube([60, 43, 38]);
				}
				translate([2*wall + 60, 2*wall + 54, wall]) {
						cube([63, 43, 38]);
				}
				translate([2*wall + 60, wall , wall]) {
						cube([63, 54, 38]);
				}
		}
}

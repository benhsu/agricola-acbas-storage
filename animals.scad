wall = 1.2;

floor = 1.2;

use<notch.scad>;

module animals() {
		difference() {

				cube([129, 103, 32]);
				translate([wall, wall, floor]) {
						cube([60, 54, 38]);
				}
				translate([wall, 2*wall + 54, floor]) {
						cube([60, 44.6, 38]);
				}
				translate([2*wall + 60, 2*wall + 54, floor]) {
						cube([64.6, 44.6, 38]);
				}
				translate([2*wall + 60, wall , floor]) {
						cube([64.6, 55.6, 38]);
				}
		}
}

animals();
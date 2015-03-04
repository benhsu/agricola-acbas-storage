wall = 2;

use<notch.scad>;

module expansions() {

		difference() {

				cube([84, 89, 32]);
				translate([wall, wall, wall]) {
						cube([80, 42, 32]);
				}

				translate([wall, 2*wall + 42, wall]) {
						cube([80, 41, 32]);
				}

				translate([32, -1, wall]) { // should be 34, 0, wall but tweak slack
						notch(42, 20, 34 - wall, 2*wall); // should be 30 - wall, wall, tweak
				}

				translate([32, 89 - (3*wall) - 1, wall]) { // should be 34, 0, wall but tweak slack
						notch(42, 20, 34 - wall, 4*wall); // should be 30 - wall, wall, tweak
				}

		}

}

expansions();
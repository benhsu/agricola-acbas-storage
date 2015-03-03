wall = 2;

use<notch.scad>;

module expansions() {

		difference() {

				cube([84, 89, 30]);
				translate([wall, wall, wall]) {
						cube([80, 40, 30]);
				}

				translate([wall, 2*wall + 40, wall]) {
						cube([80, 40, 30]);
				}

				translate([34, -1, wall]) { // should be 34, 0, wall but tweak slack
						notch(42, 20, 31 - wall, 2*wall); // should be 30 - wall, wall, tweak
				}

				translate([34, 89 - (3*wall) - 1, wall]) { // should be 34, 0, wall but tweak slack
						notch(42, 20, 31 - wall, 4*wall); // should be 30 - wall, wall, tweak
				}

		}

}

expansions();
wall = 1.2;
use <notch.scad>;

module stalls_and_borders() {
		// boxes to hold the stalls, base buildings, and borders
		difference() {
				cube([63, 42 + 2*wall, 35]);
				translate([wall, wall, wall]) {
						cube([40, 42, 34]);
				}

				translate([2 * wall + 40, wall, wall]) {
						cube([63 - wall - wall - wall - 40, 42, 34]);
				}

				translate([1.5 * wall, 21 + wall - 7, wall]) {
						rotate([0, 0, 90]) {
								notch(30, 14, 38 - wall, 3* wall);
						}
				}
				translate([1.5 * wall+ 63, 21 + wall - 7, wall]) {
						rotate([0, 0, 90]) {
								notch(30, 14, 38 - wall, 3* wall);
						}
				}
		}
}

translate([0, 193 - 42 - wall - wall, 0]) {
				stalls_and_borders();
}

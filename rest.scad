wall = 2;
use <notch.scad>;
module rest() {
		difference() {

				cube([63, 193, 32]);
				translate([wall, wall, wall]) {
						cube([59, 36, 31]);
				}

				translate([wall, 2 * wall + 36 , wall]) {
						cube([59, 35, 31]);
				}

				translate([wall, 3 * wall + 36 + 35 , wall]) {
						cube([59, 35, 31]);
				}

				translate([wall, 4 * wall + 36 + 35 + 35 , wall]) {
						cube([59, 35, 31]);
				}

				translate([wall, 5 * wall + 36 + 35 + 35 + 35, wall]) {
						cube([40, 40, 31]);
				}

				translate([2 * wall + 40, 5 * wall + 36 + 35 + 35 + 35, wall]) {
						cube([17, 40, 31]);
				}

				translate([1.5 * wall, 164, wall]) {
						rotate([0, 0, 90]) {
								notch(30, 14, 33 - wall, 3* wall);
						}
				}
				translate([1.5 * wall +  61, 164, wall]) {
						rotate([0, 0, 90]) {
								notch(30, 14, 33 - wall, 3* wall);
						}
				}
		}
}

wall = 1.2;
use <notch.scad>;

module resources() {
		difference() {

				// 193 - 1 - (42 + 2*wall)
				cube([63, 193 - 1 - 42 - wall - wall, 35]);
				// (63 - 3*wall) / 2 = 29.7 (/2 for 2 chambers)
				// (150 - 3*wall) / 2 = 73.2 (/2 for 2 chambers)
				translate([wall, wall, wall]) {
						cube([29.7, 72, 34]);
				}
				translate([wall + wall +  29.7, wall, wall]) {
						cube([29.7, 72, 34]);
				}
				translate([wall, wall + wall + 72, wall]) {
						cube([29.7, 72, 34]);
				}
				translate([wall + wall +  29.7, wall + wall + 72, wall]) {
						cube([29.7, 72, 34]);
				}


		}
}

resources();

include<constants.scad>;
use<notch.scad>;

module resources() {
		difference() {

				cube([117, 89, 35]);
				translate([wall, wall, floor]) {
						cube([60, 45, 39]);
				}
				translate([wall, 2*wall + 45, floor]) {
						cube([60, 38, 39]);
				}
				translate([2*wall + 60, 2*wall + 45, floor]) {
						cube([51, 38, 39]);
				}
				translate([2*wall + 60, wall , floor]) {
						cube([51, 45, 39]);
				}
		}
}

resources();
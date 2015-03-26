use<notch.scad>;
include<constants.scad>;

module animals() {
		difference() {

				cube([148, 103, 36]);
				translate([wall, wall, wall]) {
						cube([65, 54, 39]);
				}
				translate([wall, 2*wall + 54, wall]) {
						cube([65, 43, 39]);
				}
				translate([2*wall + 65, 2*wall + 54, wall]) {
						cube([77, 43, 39]);
				}
				translate([2*wall + 65, wall , wall]) {
						cube([77, 54, 39]);
				}
				// make inner walls shorter than outer walls to fit scorepad in
				translate([wall, wall, 33]) {
						cube([148 - 2 * wall, 103 - 2 * wall, 4]);
				}
		}
}

animals();
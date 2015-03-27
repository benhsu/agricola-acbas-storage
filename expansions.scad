include<constants.scad>;
use<notch.scad>;

module expansions() {

		difference() {

				// magic number 54 is how many tiles this holds
				cube([44, 135, 36]); // 33 ~= 38 * .866 * + a bit for slack
				translate([wall, wall, floor]) {
						// this is a cube with a "wedge" taken out of it
						// we subtract THAT from the outer cube
						// (so double subtract=add the wedge back in)  to make
						// the wedge
						difference() {
								cube([40, 131, 36]);
								translate([0, wall + 1 + (2 * 54), floor]) {
												rotate([0,90,0]) {
														linear_extrude(height=40) {
																polygon(points=[[0,0], [0,20], [-38 * sq_32,20]]);
														}
												}
								}
						}
				}


		}

		// outlines for the various tiles
		%translate([wall, wall + 1, floor]) {
				for ( i = [0: 54]) {
						translate([0, 2*i, 0]) {
								rotate(a = [60, 0, 0]) {
 										cube([38, 38, 2]);
								}
						}
				}

		}

}


expansions();
include<constants.scad>;
use<notch.scad>;

module stalls_and_borders() {

		difference() {

				cube([44, 57, 36]); // 33 ~= 38 * .866 * + a bit for slack
				translate([wall, wall, floor]) {
						// outline for the 10 tiles this will hold
						// 19 = 38 * cos(60)
						%translate([wall, wall + 20, floor]) {
								for ( i = [0: 10]) {
										translate([0, 2*i, 0]) {
												rotate(a = [120, 0, 0]) {
 														cube([38, 38, 2]);
												}
										}
								}

						}
						// this is a cube with a "wedge" taken out of it
						// we subtract THAT from the outer cube
						// (so double subtract=add the wedge back in)  to make
						// the wedge
						difference() {
								cube([40, 53, 36]);
								// 10 is how many tiles this olds
								translate([0, 0, 0]) {
										rotate([0,90,0]) {
												linear_extrude(height=40) {
														polygon(points=[[0,0], [-38 * sq_32,0], [0,20]]);
												}
										}
								}

								// now take another cube out of it to obtain the "platform" the
								// common borders will sit on
								translate([0, 42, 0]) {
										cube([44, 15, 10]);
								}
						}
				}

		}




}


stalls_and_borders();
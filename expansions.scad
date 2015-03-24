wall = 2;

use<notch.scad>;

module expansions() {

		difference() {

				cube([89, 89, 35]);
				translate([wall, wall, wall]) {
						cube([42, 42, 35]);
				}

				translate([wall, 2*wall + 42, wall]) {
						cube([42, 42, 35]);
				}

				translate([2*wall + 42, wall, wall]) {
						cube([42, 42, 35]);
				}

				translate([2* wall + 42, 2*wall + 42, wall]) {
						cube([42, 42, 35]);
				}

				// // TODO look at polytopes and make the diagonal notches
				// translate([-wall,-wall, wall]) {
				// 		cube([25, 25, 35]);
				// }



		}

}

// color("SeaGreen") {

// 				translate([89-wall - 13 ,89 -wall -13, wall]) {
// 						cube([25, 25, 35]);
// 				}

// 				}

expansions();
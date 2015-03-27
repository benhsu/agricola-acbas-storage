include<constants.scad>;
use<notch.scad>;


module player() {
		difference() {
				cube([30, 44, 36]);
				translate([wall,wall,floor]) {
						cube([30 - wall - wall,44 - wall - wall,38]);
				}
		}
}

player();
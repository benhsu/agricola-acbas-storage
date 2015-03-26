wall=1.2;

module player() {
		difference() {
				cube([30, 44, 36]);
				translate([wall,wall,wall]) {
						cube([30 - wall - wall,44 - wall - wall,38]);
				}
		}
}

player();
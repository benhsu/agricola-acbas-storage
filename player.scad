wall=1.2;

module player() {
		difference() {
				cube([44, 44, 35]);
				translate([wall,wall,wall]) {
						cube([44 - wall - wall,44 - wall - wall,38]);
				}
		}
}

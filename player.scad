wall=2;

module player() {
		difference() {
				cube([44, 44, 35]);
				translate([wall,wall,wall]) {
						cube([40,40,38]);
				}
		}
}

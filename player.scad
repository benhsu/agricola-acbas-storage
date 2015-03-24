wall=1.2;

module player() {
		difference() {
				cube([63, 29, 35]);
				translate([wall,wall,wall]) {
						cube([63 - wall - wall,29 - wall - wall,38]);
				}
		}
}

player();
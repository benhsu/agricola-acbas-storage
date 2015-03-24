wall=1.2;

module player() {
		difference() {
				cube([63, 28.5, 35]);
				translate([wall,wall,wall]) {
						cube([63 - wall - wall,28.5 - wall - wall,38]);
				}
		}
}

player();
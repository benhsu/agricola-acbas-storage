wall=2;

module player() {
		difference() {
				cube([44, 44, 30]);
				translate([wall,wall,wall]) {
						cube([40,40,29]);
				}
		}
}

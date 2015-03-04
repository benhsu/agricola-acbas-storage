wall=2;

module player() {
		difference() {
				cube([44, 44, 32]);
				translate([wall,wall,wall]) {
						cube([40,40,31]);
				}
		}
}

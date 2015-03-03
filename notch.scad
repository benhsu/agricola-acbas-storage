
/**
a notch is a trapezoidal prism which will be "subtracted"
from a wall to create an opening

parameters:

top: how wide the top of the trapezoid is
bottom: how wide the bottom of the trapezoid is
tall: how tall the wall is
thich: how thick the wall is

the notch will be created with the botto
*/

module notch(top, bottom, tall, thick) {
		x = 0.5 * (bottom-top);
		// translate to make the bottom start at 0,0
		translate([0, thick, 0]) {
				// rotate because linear extrude extrudes along the
				// z axis and we want it along the y axis
				rotate([90,0,0]) {
						linear_extrude(height=thick) {
								polygon(points=[[0,0], [bottom,0], [bottom-x,tall], [x,tall]]);
						}
				}
		}


}


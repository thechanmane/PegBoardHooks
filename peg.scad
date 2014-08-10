include <config.scad>

module peg()
{
	difference(){
		union(){
			cube([5, 6, 5], center = true);
			intersection()
			{
				cube([12, 40, 5], center = true);
				translate([0, 5/2+6/2, 0])
					rotate([-90, 0, 0])
						cylinder(r1 = 7.4/2, r2 = 5/2, h = 5, center = true);
			}
		}
		*translate([0, 2, 0])
			cube([1.25, 15, 5 + pad], center = true);
	}
}

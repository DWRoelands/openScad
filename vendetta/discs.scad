include <parameters.scad>;

circleX = wellX/2;
circleY = holderY/2;

cube([wellX,holderY,2]);

difference(){
    translate([circleX,circleY,2])
    cylinder(lvl1Z-2, discR + discPadding + discHolder, discR + discPadding + discHolder, $fn=180);

    translate([circleX,circleY,2-_min])
    color("red")
    cylinder(lvl1Z-1, discR + discPadding, discR + discPadding, $fn=180);

    translate([0,holderY/2 - discNotch/2 ,2 - _min])
    cube([wellX,discNotch,lvl1Z+5]);

}



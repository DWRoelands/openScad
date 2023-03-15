include <parameters.scad>


difference(){
cube([trayX, lidY+wall, trayZ],center=true);
    
translate([0,wall+_min,0])
        cube([trayX-(2*lidDiff),lidY,trayZ-(2*lidDiff)],center=true);

    translate([-33.3,-(lidY/2)+.5,-(sideFontSize/2)])
    rotate([90,0,0])
    linear_extrude(2)
    text("SKULLS OF SEDLEC", font=sideFontName, size=sideFontSize);    
}


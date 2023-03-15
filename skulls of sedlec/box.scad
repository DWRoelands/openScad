include <parameters.scad>

difference() {
    cube([trayX,trayY,trayZ]);
    
    translate([wall+_min,0-_min,wall+_min]) cube([trayX-(wall*2),trayY-(wall),trayZ-(wall*2)]);
    
    //lid taper
    translate([0-_min,0-_min,0]) cube([lidDiff,lidY,trayZ+_min]);
    translate([0-_min,0-_min,trayZ-lidDiff]) cube([trayX+_min,lidY,trayZ-lidDiff]);
    translate([trayX-lidDiff-_min,0-_min,0]) cube([lidDiff+(2*_min),lidY,trayZ+_min]);
    translate([0-_min,0-_min,0-_min]) cube([trayX+_min,lidY,lidDiff]);

    //front logo
    rotate([0,0,180])
    translate([-trayX+2.5,-65,trayZ+(2*wall)-4.5])
        scale([.13,.13,1])
        linear_extrude(2)
        import("skulls of sedlec.svg");    

    // side text 1
    translate([trayX-.5,lidY+2,(trayZ/2)-(sideFontSize/2)-.5])
    rotate([90,0,90])
    linear_extrude(2)
    text("SKULLS OF SEDLEC", font=sideFontName, size=sideFontSize);

    //side text 2
    translate([0.5,trayY-3,(trayZ/2)-(sideFontSize/2)-.5])
    rotate([90,0,270])
    linear_extrude(2)
    text("SKULLS OF SEDLEC", font=sideFontName, size=sideFontSize);
}
    






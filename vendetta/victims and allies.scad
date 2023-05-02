include <parameters.scad>

difference() {
    cube([trayX,trayY,crdTrayZ]);
    
    translate([wall+_min,wall+_min,wall+_min]) 
    cube([trayX-(wall*2),trayY-(2*wall),50]);

    translate([(trayX/2)-(trayNotch/2),-(wall/2),wall+_min])
    cube([trayNotch,trayY+10,50]);
    
    translate([.5,85,3])
    rotate([90,0,270])
    color("red")
    linear_extrude(2)
    text("VICTIMS", font=sideFontName, size=trayFontSize);
}

translate([trayX-wall+_min+_min,0,0])    
difference() {
    cube([trayX,trayY,crdTrayZ]);
    
    translate([wall+_min,wall+_min,wall+_min]) 
    cube([trayX-(wall*2),trayY-(2*wall),50]);

    translate([(trayX/2)-(trayNotch/2),-(wall/2),wall+_min])
    cube([trayNotch,trayY+10,50]);
    
    translate([trayX-.5,22,3])
    rotate([90,0,90])
    color("red")
    linear_extrude(2)
    text("ALLIES", font=sideFontName, size=trayFontSize);
}

translate([18,16,wall+.5])
rotate([0,0,45])
linear_extrude(.1)
text("VICTIMS", font=sideFontName, size=trayFontSize);

translate([97,23,wall+.5])
linear_extrude(.1)
rotate([0,0,45])
text("ALLIES", font=sideFontName, size=trayFontSize);







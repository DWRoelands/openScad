include <parameters.scad>


difference(){
cube([trayX+(2*lidSpacing), lidY+(2*wall), trayZ+(2*lidSpacing)],center=true);
    
translate([0,-(2*wall)+_min+1,0])
        cube([trayX-(2*lidDiff)+(2*lidSpacing),lidY+wall,trayZ-(2*lidDiff)+(2*lidSpacing)],center=true);
}


use <../lib/roundedcube.scad>
include <Parameters.scad>

difference()
{
    //tray base
    union()
    {
        translate([-cutoutRemainder,0,0])
            roundedcube([(cutoutRemainder*2)+wall,trayY,trayZ], false,cutoutRadius,"y");

        translate([crdW-cutoutRemainder+wall,0,0])
            roundedcube([(cutoutRemainder*2)+wall,trayY,trayZ], false,cutoutRadius,"y");

        translate([(3*cutoutRemainder)+(2*cutoutWidth)+(2*wall),0,0])
            roundedcube([(cutoutRemainder*2),trayY,trayZ], false,cutoutRadius,"y");
            
        cube([trayX, trayY, cutoutRadius]);
    }
    //end tray base
    
    // interior
    translate([wall,wall,bottom])
    cube([trayX-(2*wall),trayY-(2*wall),_max]);
    
    //end pieces
    translate([-_max,-_min,-_min])
    cube([_max,_max,_max]);
    translate([trayX,-_min,-_min])
    cube([_max,_max,_max]);

    // cutouts down to bottom
    translate([cutoutRemainder+wall,0-_min,bottom])
    cube([cutoutWidth,_max,_max]);

    translate([(3*cutoutRemainder)+cutoutWidth+(2*wall),0-_min,bottom])
    cube([cutoutWidth,_max,_max]);
    
    // fingerholes in bottom
    translate([wall+cutoutRemainder+(cutoutWidth/2),0,0-_min])
    cylinder(h=bottom+(2*_min), r1=(cutoutWidth/2), r2=(cutoutWidth/2), $fn=facets);

    translate([(3*cutoutRemainder)+cutoutWidth+(2*wall)+(cutoutWidth/2),0-_min,0-_min])
    cylinder(h=bottom+(2*_min), r1=(cutoutWidth/2), r2=(cutoutWidth/2), $fn=facets);

    translate([wall+cutoutRemainder+(cutoutWidth/2),trayY,0-_min])
    cylinder(h=bottom+(2*_min), r1=(cutoutWidth/2), r2=(cutoutWidth/2), $fn=facets);

    translate([(3*cutoutRemainder)+cutoutWidth+(2*wall)+(cutoutWidth/2),trayY-_min,0-_min])
    cylinder(h=bottom+(2*_min), r1=(cutoutWidth/2), r2=(cutoutWidth/2), $fn=facets);

}

// middle wall
translate([wall+crdW,0,bottom])
cube([wall,trayY,trayZ-manual-bottom]);






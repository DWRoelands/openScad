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
        
        // outside walls for token trays
        translate([(2*wall)+crdW,0,bottom])
            cube([crdW,wall+_min,crdH]);

        translate([(2*wall)+crdW,wall+crdL-_min,bottom])
            cube([crdW,wall+_min,crdH]);
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

    // cutouts down to bottom for cards
    translate([cutoutRemainder+wall,0-_min,bottom])
    cube([cutoutWidth,_max,_max]);
   
    // fingerholes in bottom of card well
    translate([wall+cutoutRemainder+(cutoutWidth/2),0,0-_min])
    cylinder(h=bottom+(2*_min), r1=(cutoutWidth/2), r2=(cutoutWidth/2), $fn=facets);

    translate([wall+cutoutRemainder+(cutoutWidth/2),trayY,0-_min])
    cylinder(h=bottom+(2*_min), r1=(cutoutWidth/2), r2=(cutoutWidth/2), $fn=facets);

    //label outer walls of token trays
    translate([(2*wall)+crdW,(3*gap)+(3*wall)+trayLabelDepth,crdH-trayLabelPadding])
    rotate([90,0,0])
    scale([.8,.8,.8])
    linear_extrude(5)
    text("Poverty", font=trayFontName);

    translate([(2*wall)+crdW + 67.5,wall-trayLabelDepth,crdH-trayLabelPadding])
    rotate([90,0,180])
    scale([.8,.8,.8])
    linear_extrude(2)
    text("Despair", font=trayFontName);


}

// middle wall
translate([wall+crdW,0,bottom])
cube([wall,trayY,trayZ-bottom]);

// rounded bottom for token trays
difference() {
    translate([(2*wall)+crdW,wall,bottom])
        cube([crdW-_min,crdL-_min, cutoutRadius-_min]);
    
    translate([(2*wall)+crdW,wall+_min,bottom+_min])
        roundedcube([crdW+_min,crdL-_min, crdH-20],false, cutoutRadius-_min, "y");
    
    translate([(2*wall)+crdW,wall+_min,bottom+_min+cutoutRadius-_min])
        cube([crdW-(2*_min),crdL-(2*_min),cutoutRadius+(2*_min)]);
}

// token tray walls
gap=((crdL-(2*wall))/3);
difference() {
    union() {
        translate([(2*wall)+crdW,gap+wall,bottom])
            cube([crdW,wall,crdH]);
    
        translate([(2*wall)+crdW,(2*gap)+(2*wall),bottom])
            cube([crdW,wall,crdH]);
    }
    
    // label inner walls of token trays
    translate([(2*wall)+crdW,(gap+wall)+trayLabelDepth,crdH-trayLabelPadding])
    rotate([90,0,0])
    scale([.8,.8,.8])
    linear_extrude(2)
    text("Despair", font=trayFontName);

    translate([(2*wall)+crdW,(2*gap)+(2*wall)+trayLabelDepth,crdH-trayLabelPadding])
    rotate([90,0,0])
    scale([.8,.8,.8])
    linear_extrude(2)
    text("Infirmity", font=trayFontName);

    translate([(2*wall)+crdW + 67.5,(2*wall)+gap-trayLabelDepth,crdH-trayLabelPadding])
    rotate([90,0,180])
    scale([.8,.8,.8])
    linear_extrude(2)
    text("Infirmity", font=trayFontName);

    translate([(2*wall)+crdW + 67.5,(3*wall)+(2*gap)-trayLabelDepth,crdH-trayLabelPadding])
    rotate([90,0,180])
    scale([.8,.8,.8])
    linear_extrude(2)
    text("Poverty", font=trayFontName);



}








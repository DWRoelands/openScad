use <../lib/roundedcube.scad>
include <Good Puppers Parameters.scad>

// parameters
bottom = 3;     // tray bottom thickness
wall = 2;       // default wall thickness
crdW = 68;      // width of card well, x axis
crdL = 93;      // length of card well, y axis
crdH = 40;      // height of card well, z axis
manual = 3;     // allowance for game manual to lay on top of cards

cutoutWidth = 25;   // width of cutout in card wells
cutoutRemainder = (crdW-cutoutWidth)/2;
cutoutRadius = 10;    //radius of curved corners

facets = 90;     // num of facets on cylinders
rcRadius = 1;    //radius for rounded corners of cubes
latchX = 13;
latchY = 10;
latchZ = 2;

_min = .01;     // padding used to prevent coincident faces
_max = 100;      // padding used to prevent coincident faces

trayX = (wall*3)+(crdW*2);
trayY = (wall*2)+crdL;
trayZ = crdH+bottom;

difference()
{
    //tray base
    union()
    {
        translate([-cutoutRemainder,0,0])
            roundedcube([(cutoutRemainder*2)+wall,trayY,trayZ], false,10,"y");

        translate([crdW-cutoutRemainder+wall,0,0])
            roundedcube([(cutoutRemainder*2)+wall,trayY,trayZ], false,10,"y");

        translate([(3*cutoutRemainder)+(2*cutoutWidth)+(2*wall),0,0])
            roundedcube([(cutoutRemainder*2),trayY,trayZ], false,10,"y");
            
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

    // end finger notch
    translate([0-_min,trayY/2,trayZ])
    rotate([0,90,0])
    cylinder(h=2*wall,r1=cutoutRadius,r2=cutoutRadius,$fn=facets);

//    //logo on end
//    translate([.2,78,1])
//    rotate([90,0,270])
//    scale([.3,.3,.3])
//    linear_extrude(5)
//    import("e:/00-git/openScad/Good Puppers/Puppers.svg");
   
   
translate([0-_min,(trayY/2)-(latchX/2),0-_min])
cube([latchX,latchY,latchZ]);
   
}

// middle wall
translate([wall+crdW,0,bottom])
cube([wall,trayY,trayZ-manual-bottom]);

//help text
tb1X = 7;
tb1Y = 71;
tbLineY = 17;
tbZ = 1;
translate([tb1X,tb1Y,bottom])
    linear_extrude(tbZ)
    text("2 Players", font="Comic Sans MS");
translate([tb1X,tb1Y-(1*tbLineY),bottom])
    linear_extrude(tbZ)
    text("3 Players", font="Comic Sans MS");
translate([tb1X,tb1Y-(2*tbLineY),bottom])
    linear_extrude(tbZ)
    text("4 Players", font="Comic Sans MS");
translate([tb1X,tb1Y-(3*tbLineY),bottom])
    linear_extrude(tbZ)
    text("5 Players", font="Comic Sans MS");

tb2X = tb1X + crdW+5;
tb2Y = tb1Y;
translate([tb2X,tb2Y,bottom])
    linear_extrude(tbZ)
    text("45 cards", font="Comic Sans MS");
translate([tb2X,tb2Y-(1*tbLineY),bottom])
    linear_extrude(tbZ)
    text("60 cards", font="Comic Sans MS");
translate([tb2X,tb2Y-(2*tbLineY),bottom])
    linear_extrude(tbZ)
    text("75 cards", font="Comic Sans MS");
translate([tb2X,tb2Y-(3*tbLineY),bottom])
    linear_extrude(tbZ)
    text("90 cards", font="Comic Sans MS");




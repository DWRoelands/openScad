_max = 75;
_min = 0.1;
bottom = 2;
wall = 2;
crdW = 68;
crdL = 93;
crdH = 40;
manualH = 3;

cutoutW = 30;

difference() {
    cube([(wall*3) + (crdW*2), (wall*2) + crdL, crdH + bottom]);
    
    translate([wall,wall,bottom])
        cube([crdW,crdL,_max]);

    translate([(2*wall)+crdW,wall,bottom])
        cube([crdW,crdL,_max]);

    translate([wall + crdW - _min, wall + _min, bottom + crdH - manualH])
        cube([2*wall, crdL - (2*_min), _max]);

    //first cutout
    translate([wall + (crdW/2) - (cutoutW/2),0- _min,bottom])
        cube([cutoutW,wall + _min + _min,_max]);
    
    //rounded corners for first cutout
    radius = .01+ (wall + (crdW/2) - (cutoutW/2))/2;
    translate([radius, -0.01, crdH + bottom - radius])
        difference() {
            cube([radius + .01,wall + .02,radius + .01]);    
            rotate([270,0,0]) 
                cylinder($fn=100, h=wall+1, r1=radius, r2=radius);
        }

    translate([(crdW - cutoutW/2)-wall -.01, -.01 , crdH + bottom - radius])
        difference() {
            cube([radius + .01,wall + .02,radius + .01]);
            translate([radius,0,0])
            rotate([270,0,0]) 
                cylinder($fn=100, h=wall+1, r1=radius, r2=radius);
        }
    
    //second cutout
    translate([wall + (crdW/2) - (cutoutW/2) + crdW,0- _min,bottom])
        cube([cutoutW,wall + _min + _min,_max]);

    //rounded corners for second cutout
    translate([radius + crdW, -0.01, crdH + bottom - radius])
        difference() {
            cube([radius + .01,wall + .02,radius + .01]);    
            rotate([270,0,0]) 
                cylinder($fn=100, h=wall+1, r1=radius, r2=radius);
        }

    translate([(crdW - cutoutW/2)-wall -.01 + crdW, -.01 , crdH + bottom - radius])
        difference() {
            cube([radius + .01,wall + .02,radius + .01]);
            translate([radius,0,0])
            rotate([270,0,0]) 
                cylinder($fn=100, h=wall+1, r1=radius, r2=radius);
        }

//logo
//translate([98,crdL + (2*wall)-.05,3])
//    rotate([90,0,180])
//    scale([.3,.3])
//    linear_extrude(3)
//    import("e:/3d printing/good puppers/puppers.svg");


}
tb1X = 8;
tb1Y = 75;
tbLineY = 20;
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

tb2X = tb1X + crdW;
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






wall = 2;

crdX = 68;                  // width of card well, x axis
crdY = 93;                  // length of card well, y axis
crdZMain = 11;                  // height of card well, z axis
crdZMonstrance = 5;
crdZManual = 5;

lidY = 25;
lidDiff = 0.75;

_min=0.1;


trayX = crdX+(2*wall);
trayY = (crdY+(2*wall));
trayZ = crdZMain + crdZMonstrance + crdZManual + 5 + (2*wall);

difference() {
    cube([trayX,trayY,trayZ]);
    
    translate([wall+_min,0-_min,wall+_min]) cube([trayX-(wall*2),trayY-(wall),trayZ-(wall*2)]);
    
    //narrowing for lid
    translate([0-_min,0-_min,0]) cube([lidDiff,lidY,trayZ+_min]);
    translate([0-_min,0-_min,trayZ-lidDiff]) cube([trayX+_min,lidY,trayZ-lidDiff]);
    translate([trayX-_min,0-_min,0]) cube([lidDiff+_min,lidY,trayZ+_min]);
    translate([0-_min,0-_min,0-_min]) cube([trayX+_min,lidY,lidDiff]);

    rotate([0,0,180])
    translate([-trayX+3.5,-60,trayZ+(2*wall)-4.5])
        scale([.13,.13,1])
        linear_extrude(2)
        import("skulls of sedlec.svg");    

    translate([trayX-.5,lidY+4,2.5])
    rotate([90,0,90])
        scale([.13,.13,1])
        linear_extrude(2)
        import("skulls of sedlec.svg");    
    
    translate([0.5,trayY-4,2.5])
    rotate([90,0,270])
        scale([.13,.13,1])
        linear_extrude(2)
        import("skulls of sedlec.svg");    
    
}
    






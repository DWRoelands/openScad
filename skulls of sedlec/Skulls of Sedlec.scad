//thickness of box sides
wall = 2;

//width of cards, including sleeves and extra space
crdX = 67;

//length of cards including sleeves and extra space
crdY = 93;                  // length of card well, y axis

//height of the entire pile of cards.  modify if you have more cards
crdZ = 18;

//how much of the main box is tapered to accommodate the lid
lidY = 25;

//the size of the taper
lidDiff = 0.75;

//constant to avoid coincident faces.  don't change this
_min=0.1;

//calculated values
trayX = crdX+wall;
trayY = crdY+(2*wall);
trayZ = crdZ+(2*wall);

difference() {
    cube([trayX,trayY,trayZ]);
    
    translate([wall+_min,0-_min,wall+_min]) cube([trayX-(wall*2),trayY-(wall),trayZ-(wall*2)]);
    
    //narrowing for lid
    translate([0-_min,0-_min,0]) cube([lidDiff,lidY,trayZ+_min]);
    translate([0-_min,0-_min,trayZ-lidDiff]) cube([trayX+_min,lidY,trayZ-lidDiff]);
    translate([trayX-_min,0-_min,0]) cube([lidDiff+_min,lidY,trayZ+_min]);
    translate([0-_min,0-_min,0-_min]) cube([trayX+_min,lidY,lidDiff]);

    rotate([0,0,180])
    translate([-trayX+3.1,-60,trayZ+(2*wall)-4.5])
        scale([.13,.13,1])
        linear_extrude(2)
        import("skulls of sedlec.svg");    

    translate([trayX-.5,lidY+2,10])
    rotate([90,0,90])
    linear_extrude(2)
    text("SKULLS OF SEDLEC", font="Impact", size=7);

    translate([0.5,trayY-4,10])
    rotate([90,0,270])
    linear_extrude(2)
    text("SKULLS OF SEDLEC", font="Impact", size=7);
}
    






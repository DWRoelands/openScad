_max = 75;
_min = 0.1;
bottom = 2;
wall = 2;
crdW = 68;
crdL = 93;
crdH = 40;

trayX = (wall*3) + (crdW*2);
trayY = (wall*2) + crdL;
trayZ = crdH + bottom;

paddingY = 1;

shellSpace = .075;
shellThickness = 2;
shell = shellSpace + shellThickness;

//translate([0,0,trayX + shell])
//rotate([0,90,0])
difference() {
    cube([trayX + (2*shell), trayY + (2*shell), trayZ + (2*shell)]);

    translate([-_min, shell-(paddingY/2), shell])
        cube([trayX + _min, trayY + paddingY, trayZ]);

    translate([7,9,trayZ + shell + 1.8])
        scale([.7,.7,.7])
        linear_extrude(5)
        import("e:/00-git/openScad/Good Puppers/Puppers.svg");
}


use <../lib/roundedcube.scad>
use <../lib/Utility.scad>
include <Parameters.scad>

echo(trayX=trayX);
echo(trayY=trayY);
echo(trayZ=trayZ);
echo(sleeveX=sleeveX);
echo(sleeveY=sleeveY);
echo(sleeveZ=sleeveZ);

gapX=(sleeveX-trayX-sleeveWall);
gapY=(sleeveY-trayY-(2*sleeveWall));
gapZ=(sleeveZ-trayZ-(2*sleeveWall));
echo(gapX=gapX);
echo(gapY=gapY);
echo(gapZ=gapZ);

difference() {
    // create the starting block of material
    cube([sleeveX,sleeveY,sleeveZ],center=true);
    
    // carve out the space for the tray
    translate([-2,0,0])
        cube([trayX+padding+1,trayY+(2*padding),trayZ+(2*padding)],center=true);

    // put the logo on the top and center it
    rotate([0,0,logoOrientation])
    translate([-(sleeveX/2)+6,-(sleeveY/2)+11,(sleeveZ/2)-.5])
        scale([.7,.7,.7])
        color("red")
        linear_extrude(5)
        import("e:/00-git/openScad/Good Puppers/Puppers.svg");
}


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

rotate([0,0,90])
translate([-(sleeveX/2)+24.5,5,(sleeveZ/2)-1])
    scale([.4,.4,.4])
    linear_extrude(5)
    import("artistes miserables.svg");



}

translate([-45,-100,-14.5])
rotate([90,-90,0])
color("blue")
scale([.65,.65,.65])
text("Artistes", font="Times New Roman");

translate([-36,-100,-19.5])
rotate([90,-90,0])
color("blue")
scale([.65,.65,.65])
text("Miserables", font="Times New Roman");





use <../lib/roundedcube.scad>
use <../lib/Utility.scad>
include <Good Puppers Parameters.scad>

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
    cube([sleeveX,sleeveY,sleeveZ],center=true);
    
    translate([-2,0,0])
        cube([trayX+padding+1,trayY+(2*padding),trayZ+(2*padding)],center=true);
    
    translate([-(sleeveX/2),0,-(sleeveZ/2)])
        cube([latchHookX,latchY + (2*latchGap),sleeveWall*3],center=true);
    
    translate([-(sleeveX/2)+6,-(sleeveY/2)+11,(sleeveZ/2)-.5])
        scale([.7,.7,.7])
        color("red")
        linear_extrude(5)
        import("e:/00-git/openScad/Good Puppers/Puppers.svg");
}

translate([-(sleeveX/2)+(latchHookX/2),0,-(sleeveZ/2)+(sleeveWall/2)+_min])
    color("blue")
    cube([latchHookX,latchY,sleeveWall],center=true);

translate([-(sleeveX/2)+latchZ,-latchY/2,-(sleeveZ/2)+sleeveWall])
    rotate([0,90,90])
    color("red")
    halfcylinder(latchY,latchZ,20);

translate([-(sleeveX/2)+latchZ,-latchY/2,-(sleeveZ/2)+sleeveWall])
    color("red")
    cube([latchX-latchZ-0.5,latchY,latchZ]);


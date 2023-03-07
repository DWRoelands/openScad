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

title = "Innovation";
players = "2 to 4 players";
playTime = "45 to 60 minutes";
sleeveFontName = "Grifter:style=Bold";
sleeveSpineTextDepth = .5;
sleeveSpineTitleSize = 11;
sleeveSpinePlayersSize = 7;
sleeveSpineTimeSize = 7;
sleeveSpineLineSpacing = 3;
sleeveSpinePaddingLeft = 3;


difference() {
    // create the starting block of material
    cube([sleeveX,sleeveY,sleeveZ],center=true);
    
    // carve out the space for the tray
    translate([-2,0,0])
        cube([trayX+padding+1,trayY+(2*padding),trayZ+(2*padding)],center=true);

    // cover image
    rotate([0,0,90])
    translate([-(sleeveX/2)+24.5,15,(sleeveZ/2)-1])
        scale([.18,.18,1])
        linear_extrude(1+_min)
        import("innovation.svg");
    
    // spine text
    titleZ=(
        (sleeveZ-
        (sleeveSpineTitleSize+
        sleeveSpineLineSpacing+
        sleeveSpinePlayersSize+
        sleeveSpineLineSpacing+
        sleeveSpineTimeSize))/4);
    translate([-(sleeveX/2)+sleeveSpinePaddingLeft,-(sleeveY/2)-sleeveWall + 2 + sleeveSpineTextDepth,titleZ])
    rotate([90,0,0])
    linear_extrude(2)
    text(title, font=sleeveFontName, size=sleeveSpineTitleSize);

    playersZ = titleZ - sleeveSpineLineSpacing - sleeveSpinePlayersSize;
    translate([-(sleeveX/2)+sleeveSpinePaddingLeft,-(sleeveY/2)-sleeveWall + 2 + sleeveSpineTextDepth,playersZ])
    rotate([90,0,0])
    linear_extrude(2)
    text(players, font=sleeveFontName, size=sleeveSpinePlayersSize);

    playTimeZ = playersZ - sleeveSpineLineSpacing - sleeveSpineTimeSize;
    translate([-(sleeveX/2)+sleeveSpinePaddingLeft,-(sleeveY/2)-sleeveWall + 2 + sleeveSpineTextDepth,playTimeZ])
    rotate([90,0,0])
    linear_extrude(2)
    text(playTime, font=sleeveFontName, size=sleeveSpinePlayersSize);    
}


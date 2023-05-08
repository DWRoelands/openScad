include <parameters.scad>;
use <../lib/roundedcube.scad>

difference(){

    cube([wellX,holderY,btZ]);

    translate([btWall,btWall,btBottom])
        btWell();   

    translate([(btWall*2) + btWellX,btWall,btBottom])
        btWell();   

    translate([(btWall*3) + (2*btWellX),btWall,btBottom])
        btWell();   

    translate([(btWall*4) + (3*btWellX),btWall,btBottom])
        btWell();   

}

module btWell() {
    color("red")
    roundedcube([btWellX,holderY-(2*btWall),40], false, 5 ,"x");
}

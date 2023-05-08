include <parameters.scad>;

Z = lvl1Z - miscBottom + _min;
redX = crdY;
redY = crdX;
blueX = crdY;
blueY = miscY - redY - (3*miscWall);
greenX = miscX - (3*miscWall) - crdY;
greenY = miscY - (2*miscWall);
notchY = crdX/2;
notchX = 10;
notchYTranslate = (2*miscWall) + blueY + (redY/2)-(notchY/2);

difference() {
    cube([miscX, miscY, miscZ]);

    translate([miscWall, miscWall, miscBottom])
    color("blue")
    cube([blueX,blueY,Z]);

    translate([miscWall, (2*miscWall) + blueY, miscBottom])
    color("red")
    cube([crdY, crdX, Z]);

    translate([(2*miscWall) + crdY, miscWall, miscBottom])
    color("green")
    cube([miscX - (3*miscWall) - crdY, miscY - (2*miscWall), Z]);

    translate([-(notchX/2),notchYTranslate,miscBottom+_min])
    color("green")
    cube([notchX, notchY, Z+_min]);
}







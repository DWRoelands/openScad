// collection of useful code gathered from all over the place

// user "radus" on Thingiverse
// https://www.thingiverse.com/groups/openscad/forums/general/topic:31057
module halfcylinder(he,rd,fn) {
    difference(){
        cylinder (h=he,r=rd,$fn=fn);
        translate ([0,-rd-0.1,-0.1]) 
            cube([rd+0.1,rd*2+0.2,he+0.2]);
    } 
} 

// hexagon functions
hexagon(height,edgeLength) {
    cylinder(h=height, r1=edgeLength*2, r2=edgeLength*2, $fn=6);
}

function ld() = 2 * hexEdge;  // long diagonal
function sd() = sqrt(3) * hexEdge;  // short diagonal
// end hexagon functions




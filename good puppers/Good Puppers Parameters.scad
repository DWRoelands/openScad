// parameters use by sleeve and tray
bottom = 3;     // tray bottom thickness
wall = 2;       // default wall thickness
crdW = 68;      // width of card well, x axis
crdL = 93;      // length of card well, y axis
crdH = 40;      // height of card well, z axis
manual = 3;     // allowance for game manual to lay on top of cards

cutoutWidth = 25;   // width of cutout in card wells
cutoutRemainder = (crdW-cutoutWidth)/2;
cutoutRadius = 10;    //radius of curved corners

facets = 90;     // num of facets on cylinders
rcRadius = 1;    //radius for rounded corners of cubes
latchX = 13;
latchY = 10;
latchZ = 2;

_min = .01;     // padding used to prevent coincident faces
_max = 100;      // padding used to prevent coincident faces
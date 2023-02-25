// parameters use by sleeve and tray
bottom = 3;     // tray bottom thickness
wall = 2;       // default wall thickness
crdW = 68;      // width of card well, x axis
crdL = 93;      // length of card well, y axis
crdH = 40;      // height of card well, z axis
manual = 3;     // allowance for game manual to lay on top of cards
trayX = (wall*3)+(crdW*2);
trayY = (wall*2)+crdL;
trayZ = crdH+bottom;

cutoutWidth = 25;   // width of cutout in card wells
cutoutRemainder = (crdW-cutoutWidth)/2;
cutoutRadius = 10;    //radius of curved corners

facets = 90;     // num of facets on cylinders
rcRadius = 1;    //radius for rounded corners of cubes
latchX = 5;
latchY = 10;
latchZ = 2;
latchGap = 0.5;
latchHookX = 30;

_min = .01;     // padding used to prevent coincident faces
_max = 100;      // padding used to prevent coincident faces

padding = 0.5;     // the space between the tray and the sleeve on each side
sleeveWall = 2;
sleeveX = trayX + sleeveWall + padding;   
sleeveY = trayY + (2*sleeveWall) + (2*padding);
sleeveZ = trayZ + (2*sleeveWall) + (2*padding);

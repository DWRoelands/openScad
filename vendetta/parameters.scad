//parameters
//thickness of box sides
wall = 2;

//width of cards, including sleeves and extra space
crdX = 70;

//length of cards including sleeves and extra space
crdY = 93;                  

//height of the entire pile of cards.  modify if you have more cards
crdZ = 18;

//how much of the main box is tapered to accommodate the lid
lidY = 25;

//the size of the taper
lidDiff = 0.75;

//The amount of "looseness" between the lid and the box on each side
lidSpacing = 0.25;

sideFontName="Impact";
sideFontSize=10;
sideFontLeftPadding=2;

//constant to avoid coincident faces.  don't change this
_min=0.1;

//calculated values
trayX = crdX+(2*wall);
trayY = crdY+(2*wall);
trayZ = crdZ+(2*wall);

// values for card tray
crdTrayZ = 23 + wall;
trayNotch = 40;
trayFontSize = 16;

// non-card well
wellX = 142;

lvl1Z = 12;

// places discs
discR = 60;
discPadding = 2;
discHolder = 3;
discBrim = 2;
discNotch = 70;
holderY = (2 * discR) + (2 * discHolder) + (2 * discPadding) + (2 * discBrim);

//miscellaneous tray
boxSize = 243;
miscBottom = 1;
miscX = wellX;
miscY = boxSize - holderY;
miscZ = lvl1Z;
miscWall=1;

//blood tokens tray
// same basic size as the places disc holder
btWall = 1;
btBottom = 2;
btWellDepth = 18;
btZ = btBottom + btWellDepth;
btWellX = (wellX - (5*btWall))/4;

//blood tokens ks
// same basic size as the miscellaneous tray
btkWall = 1;
btkBottom = 2;
btkWellDepth = 18;
btkZ = btkBottom + btkWellDepth;
btkWellX = (wellX - (5*btWall))/4;


FloorThickness = 1;
Padding = 1;
ComponentHeight = 2;

// Retailer physical dimensions
RetailerWidth = 20;
RetailerLengthSmall = 120;
RetailerLengthMedium = 140;
RetailerLengthLarge = 160;
RetailerLengthPadding = 2;

// retailer tray parameters
RetailerTrayWidth = 24;  //hardcoded because this is the physical space in the box
RetailerWalls = (RetailerTrayWidth - (RetailerWidth + Padding)) / 2;
RetailerTrayLength = RetailerLengthLarge + RetailerLengthPadding + (2 * RetailerWalls);
RetailerTrayHeight = 20;
RetailerTrayCutoutRidgeWidth = 5;

// Research physical dimensions
PatentLength = 30;
TechnologyLength = 60;

// research tray parameters
ResearchTrayWidth = 24; //hardcoded because this is the physical space in the box
ResearchWallsx = (ResearchTrayWidth - ((ComponentHeight * 6) + (Padding*2))) / 2;
ResearchWallsy = (ResearchTrayWidth - ((ComponentHeight * 6) + (Padding*2))) / 3;
ResearchTrayLength = (3 * ResearchWallsy) + (PatentLength + Padding) + (TechnologyLength + Padding);
ResearchTrayHeight = 20; //hardcoded because this is the physical space in the box


//build retailer tray
difference() {
    cube([RetailerTrayLength, RetailerTrayWidth, RetailerTrayHeight]);
    
    // small retailer layer
    translate([RetailerWalls, RetailerWalls, FloorThickness])
        cube([RetailerLengthSmall + RetailerLengthPadding, RetailerWidth + Padding, RetailerTrayHeight]);
    
    // medium retailer layer
    translate([RetailerWalls, RetailerWalls, FloorThickness + (2 * ComponentHeight)])
        cube([RetailerLengthMedium + RetailerLengthPadding, RetailerWidth + Padding, RetailerTrayHeight]);
    
    // large retailer layer
    translate([RetailerWalls, RetailerWalls, FloorThickness + (5 * ComponentHeight)])
        cube([RetailerLengthLarge + RetailerLengthPadding, RetailerWidth + Padding, RetailerTrayHeight]);
    
    // finger cutout
    translate([0, RetailerTrayCutoutRidgeWidth, FloorThickness])
        cube([RetailerWalls, RetailerTrayWidth - (2 * RetailerTrayCutoutRidgeWidth), RetailerTrayHeight]);
}
union()

//build technologies tray
difference() {
translate([RetailerTrayLength - ResearchTrayWidth, RetailerTrayWidth - RetailerWalls, 0])
    cube([ResearchTrayWidth, ResearchTrayLength, ResearchTrayHeight]);

    anchorx = RetailerTrayLength - ResearchTrayWidth;
    anchory = RetailerTrayWidth - RetailerWalls;

    translate([anchorx + ResearchWallsx, anchory + ResearchWallsy, FloorThickness])
        cube([ResearchTrayWidth - (2 * ResearchWallsx), PatentLength + Padding, ResearchTrayHeight]);

    anchory2 = RetailerTrayWidth - RetailerWalls + ResearchWallsy + PatentLength + Padding;
    
    translate([anchorx + ResearchWallsx, anchory2 + ResearchWallsy, FloorThickness])
        cube([ResearchTrayWidth - (2 * ResearchWallsx),TechnologyLength + Padding, ResearchTrayHeight]);
    
}





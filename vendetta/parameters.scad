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
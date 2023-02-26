// ADJUSTABLE STUFF
// ALL VALUES ARE IN MILLIMETERS
// If you want the tray to slide out to the left, leave this as "0".
// If you want the tray to slide out to the right, set this to "180.
logoOrientation = 0;

// if you want the semi-circular cutouts to be bigger or smaller,
// adjust this value.
cutoutWidth = 25;

// If you want the curved corners on the tray to be smaller, reduce this
// number.  
cutoutRadius = 10;

// Quality of the smei-circular cutouts.  The higher the number, the
// smoother the curve.  If you're playing around in OpenSCAD to tweak the
// design, drop this to 10 for faster rendering.
facets = 90;

// These control the size of the card wells.  I use Mayday Premium
// sleeves, so adjust these if you're using a different sleeve.
crdW = 68;                  // width of card well, x axis
crdL = 93;                  // length of card well, y axis
crdH = 40;                  // height of card well, z axis

// Thickness of the sleeve wall
sleeveWall = 2;

// Thickness of the bottom of the tray.  I found 2 to be a little bendy.
bottom = 3;                 

// Thickness of the tray walls.
wall = 2;

// This controls how much height will be cut from the wall between the two
// card wells.  This creates space for the game manual.
manual = 3;

// This is for the padding between the tray and the sleeve. 
// If you find that the fit is too loose or too light for your taste,
// adjust this value accordingly.
padding = 0.5;     

// MAKING ADJUSTMENTS BELOW THIS POINT IS NOT ADVISED
trayX = (wall*3)+(crdW*2);
trayY = (wall*2)+crdL;
trayZ = crdH+bottom;
cutoutRemainder = (crdW-cutoutWidth)/2;
sleeveX = trayX + sleeveWall + padding +2;   
sleeveY = trayY + (2*sleeveWall) + (2*padding);
sleeveZ = trayZ + (2*sleeveWall) + (2*padding);

// padding used to prevent coincident faces in OpenSCAD at render time
_min = .01;    
_max = 100;


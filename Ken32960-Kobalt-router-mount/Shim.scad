// Shim Ring for Kobalt rounter in Maslow4

IDShaft = 65.8 + .2;  // Hole a little bigger
ODShaft = 68.5 + .2; // Dia a little bigger
ODBase = ODShaft + 2;  // Base Collar
CollarH = 1.2     ; // height of collar
Height = 98 + CollarH;
Gap = 3;
$fn = 360;



difference() {
	union() {
      // Collar
        cylinder(h=CollarH, d=ODBase, center=false);
      // ring
        cylinder(h=Height, d=ODShaft, center=false); 

    } 
    // Cut center hole
    translate([0,0,-.1])
      cylinder(h=Height + 1, d=IDShaft, center=false);

    // Cut Slot
    translate([0,0,-.1])
      cube([ODShaft + 1, Gap, Height + 1]);
    
    // Cut chamfer top
    translate([0,0, Height - 4.5])
      cylinder(h=5, d1=IDShaft, d2=ODShaft, center=false);

// Cross section
//     rotate([0,0,-90])
//         cube([100,100,100]);
} // D1

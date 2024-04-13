// PCB_MountBase for Kobalt rounter in Maslow4

ODKobalt = 68 + .4;  // Hole a little bigger
DBase = 113;
HBase = 3;
BrushDist = 80;
BarW = 8;
BarL = 20;
WallT = 3;
WallH = 8;
BrushL = 30;    // Fore and aft of brush mount length
BrushW = 76;    // Width of brushes through the router
$fn = 36;



difference() {
	union() {
      // Base
        cylinder(h=HBase, d=DBase, center=false);
      // Right support
        translate([BrushDist/2, -(BarL + WallT + WallT)/2,0])
            cube([BarW + WallT + WallT, 
                BarL + WallT + WallT, WallH]);
        // Left Support
        translate([-(BrushDist/2 + BarW + WallT + WallT),
            -(BarL + WallT + WallT)/2,0])
            cube([BarW + WallT + WallT, 
                BarL + WallT + WallT, WallH]);

    } 
    // Cut center hole
    translate([0,0,-.1])
      cylinder(h=HBase + 1, d=ODKobalt, center=false);
    // Cut LEFT Slot
    translate([BrushDist/2 + WallT, -(BarL)/2, 1])
        cube([BarW, BarL, WallH]);
    // Cut Right Slot
    translate([-(BrushDist/2 + BarW + WallT),
            -(BarL)/2,1])
        cube([BarW, BarL, WallH]);// Cross section
    // Cut of top of base
    translate([-100,45,-1])
        cube ([200,200,20]);
    // Cut of top of base
    translate([-100,-245,-1])
        cube ([200,200,20]);
    // Pocket for brushes
    translate([-BrushW/2, -BrushL/2, 1])
        cube([BrushW, BrushL, 10]);
	// Cross section view
    //     rotate([0,0,-90])
    //         cube([100,100,100]);

} // D1

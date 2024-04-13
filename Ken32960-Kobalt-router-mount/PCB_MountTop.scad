// PCB_MountTop for Kobalt rounter in Maslow4

DCenter = 63;  // Hole a little bigger
DBase = 113;
HBase = 3;
BrushDist = 80;
BarW = 8;
BarL = 20;
WallT = 3;
WallH = 8;
BoltD = 4;
NutD = 6.5;
PostD = 10;
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

        // Ring for test print
        //cylinder(h=1, d=74);
        
        // Pin1
        //translate([-12,-40,0])
            //cube([1,50,2]);
        translate([-12,-35,0])
            cylinder(h=WallH, d=PostD);
        // Pin2
        //translate([-12,-40,0])
            //cylinder(h=3, r=58);
        translate([-34,17.8,0])
            cylinder(h=WallH, d=PostD);   
        // Pin3     
        //translate([-34,13.8,0])
            //cylinder(h=4, r=53.5);
        translate([15.9,33,0])
            cylinder(h=WallH, d=PostD);   
    } 
	
    // Cut center hole
    translate([0,0,-.1])
        cylinder(h=HBase + 1, d=DCenter, center=false);
    // Cut LEFT Slot
    translate([BrushDist/2 + WallT, -(BarL)/2, -.1])
        cube([BarW, BarL, WallH+1]);
    // Cut Right Slot
    translate([-(BrushDist/2 + BarW + WallT),
            -(BarL)/2, -.1])
        cube([BarW, BarL, WallH+1]);

    // Cut off top of base
    translate([-100,45,-1])
        cube ([200,200,20]);
    // Cut off top of base
    translate([-100,-245,-1])
        cube ([200,200,20]);

//       translate([0,0,-.04])
//          cylinder(h=2, d=65);

    // Index Mark 6 o'clock
    translate([-1,-37.5,-.04])
        cube([2,2,5]);
    // Pin1
    translate([-12,-35,-1]) 
        cylinder(h=15, d=BoltD);
    //Nut1
    translate([-12,-35,-.04]) 
        cylinder(h=WallH-2, d=NutD, $fn=6);
   
    // Pin2
    translate([-34,17.8,-1]) 
        cylinder(h=15, d=BoltD); 
    //Nut2
    translate([-34,17.8,-.04]) 
        cylinder(h=WallH-2, d=NutD, $fn=6);
    // Notch for PCB wire clearance
    translate([-34, 13, WallH-2]) 
        cylinder(h=5, d=3);    
      
    // Pin3     
    translate([15.9,33,-1]) 
        cylinder(h=15, d=BoltD);   
    //Nut3
    translate([15.9,33,-.04]) 
        cylinder(h=WallH-2, d=NutD, $fn=6);
    

	// Cross section view
    //     rotate([0,0,-90])
    //         cube([100,100,100]);

} // D1

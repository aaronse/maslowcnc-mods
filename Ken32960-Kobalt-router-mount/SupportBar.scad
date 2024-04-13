// Support Bars for Kobalt rounter in Maslow4


BarW = 8 - .1;
BarL = 20 - .1;
BarH = 70;
$fn = 36;



difference() {  // D1
	union() {

      // Support Bar
         cube([BarH, BarL, BarW]);
    } 
	// Cross section view
    //     rotate([0,0,-90])
    //         cube([100,100,100]);

} // D1

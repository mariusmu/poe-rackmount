//Author Marius Munthe-Kaas
//mariussmk@gmail.com

// Very simple rack mount extension
// to fasten the 8 Port Passive Gigabit POE Injector Panel 12-48V POE8PG 
translate([0,0,0]) {
    $l = 60; //Length of POE box
    $w = 35; // Width of the cube
    $holeThrough = 50; //Just very tall height to ensure cut through
    $additionalSpace = 6; 
    $positionHoleXLeft = 7;
    $leftHoleDiamater = 5;
    
    $rackHoleSpace = 31.75; //Space between screews in rack
    
    $rightHoleLength = 10;
    $rightHoleDiameter = 7; 
    $positionHoleXRight = $w - $positionHoleXLeft - 7; //7 is the space from the right edge
    
    $rightHole2Y = ($rightHoleLength / 2) + $additionalSpace + $rackHoleSpace;
    
    $holeAdjustedZ = -10; //Z-axis. To ensure cut through
    
    $full = 60;
    
    difference() {
        cube([$full, $w, 5]);
        translate([$full / 2, $positionHoleXLeft, $holeAdjustedZ]) {
            cylinder($holeThrough, 5, center = true);
        }
        translate([$additionalSpace, $positionHoleXRight, $holeAdjustedZ]) {
             cube([$rightHoleLength, $rightHoleDiameter, $holeThrough]);
        }
        
        translate([$rightHole2Y, $positionHoleXRight, $holeAdjustedZ]) {
             cube([$rightHoleLength, $rightHoleDiameter, $holeThrough]);
            
        }
    }
}
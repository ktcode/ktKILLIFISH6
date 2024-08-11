//
// ktKILLIFISH6
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 2;

PR = 25;
PRB = PR+1;
 
difference()
{
    union()
    {
        translate([0, 0, 0]) rotate([0, 0, 0]) cylinder(r1=PRB/2, r2=PR/2, h=30, $fn=100);
       
        hull(){
            translate([0, 0, 0]) rotate([0, 0, 0]) cylinder(r=PRB/2, h=0.1, $fn=100);
            translate([0, 0, -30]) rotate([30, 0, 0]) cube([50, 5, 5], center=true);
        }
    }
   
    translate([0, 0, 0]) rotate([0, 0, 0]) cylinder(r1=(PRB-th)/2, r2=(PR-th)/2,  h=30, $fn=100);
   
    hull(){
        translate([0, 0, 0]) rotate([0, 0, 0]) cylinder(r=(PRB-th)/2, h=0.1, $fn=100);
        translate([0, 0, -30]) rotate([30, 0, 0]) cube([50-th*2, 5-th, 5+1], center=true);
    }
}



/*
difference()
{
    union()
    {
        translate([-615/2, -460/2, 0]) cube([615, 460, 547]);
        
        translate([-600/2, -455/2, 547+185-30]) cube([600, 455, 30]);
        translate([0, 0, 547]) hull(){
            translate([-560/2, -430/2, 185])  cube([560, 430, 1]);
            translate([-497/2, -360/2, 0]) cube([497, 360, 1]);
        }
    }
    
    #translate([-615/2+85, 460/2-85, 547-50]) cylinder(r=90/2, h=100, $fn=10);
    #translate([615/2-85, 460/2-85, 547-50]) cylinder(r=90/2, h=100, $fn=10);

    translate([0, 0, 547+gap2]) hull(){
            translate([-(560-5)/2, -(430-5)/2, 185])  cube([560-5, 430-5, 1]);
            translate([-(497-5)/2, -(360-5)/2, 5]) cube([497-5, 360-5, 1]);
        }
}
*/


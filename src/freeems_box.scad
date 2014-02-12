include <jaguar.scad>;
include <BOLTS/BOLTS.scad>;


// Units are milimeters

//GLOBALS
HEIGHT=50; // Z
WIDTH=150; // Y
LENGTH=200; // X
THICKNESS=5;

color("Darkgreen") {
    difference() {
      cube(size = [LENGTH, WIDTH, HEIGHT], center = true);
      translate([0, 0,  THICKNESS]) {
        cube(size = [(LENGTH - THICKNESS),  WIDTH - THICKNESS, HEIGHT + 1], center=true);
      }
    }
}
// Mounting device for the Jaguar
jaguar();

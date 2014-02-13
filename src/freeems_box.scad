include <jaguar.scad>;
include <BOLTS/BOLTS.scad>;


// Units are milimeters

//Assembly mode
ASSEMBLY=false;

//GLOBALS
HEIGHT=50; // Z
WIDTH=150; // Y
LENGTH=200; // X
THICKNESS=5;

difference() {
  cube(size = [LENGTH, WIDTH, HEIGHT], center = true);
  translate([0, 0,  THICKNESS]) {
    cube(size = [(LENGTH - THICKNESS),  WIDTH - THICKNESS, HEIGHT + 1], center=true);
  }
  // Jaguar slice to fit one side of the board
  translate([0,76.2/2 - (THICKNESS - 2) , 0]) {
    jaguar();
  }
}
// Inner mounting device for the jaguar
difference() {
  translate([0, -5, -HEIGHT/4]) {
    cube(size = [127 + 20, 10, HEIGHT/2], center = true);
  }
  // Jaguar slice to fit the center side of the board
  translate([0,76.2/2 - (THICKNESS - 2) , 0]) {
    jaguar();
  }
}

if (ASSEMBLY == true) {
  translate([0,76.2/2 - (THICKNESS - 2) , 0]) {
    jaguar();
  }

  translate([200, -230, 90]) {
    color("Grey") {
      import("../connectors/receptor_084506001/molex_receptor.stl");
    }
  }
}

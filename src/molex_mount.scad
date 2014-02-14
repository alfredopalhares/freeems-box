// A hole to fit the molex rececptor ID 84506-0001

module molex_diagram() {
  // Dimmensions, check the drawing on the connectors folder
  diameter=43.08;
  height=41.45;
  color("Grey") {
    intersection() {
      circle(r = diameter/2, center = true);
      // We only need the top to be cut
      translate([0, -(diameter - height), 0]) {
        square([diameter, height], center = true);
      }
    }
  }
}

module molex_mount() {
  color("Red") {
  // Space that the molex should take inside the case
    rotate([90, 0, 0]) {
      linear_extrude(molex_non_thread_size) {
        molex_mount();
      }
    }
  }
} 

// A hole to fit the molex rececptor ID 84506-0001

module molex_mount() {
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

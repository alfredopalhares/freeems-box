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
        molex_diagram();
      }
    }
  }
}

/* The reprentation of the molex recptor
 * Frecad generares the stl according to the angle you create the
 * So the mesh needs to be rotate and translated to a suitable place
 * This goes to the first hole
 */
module molex_receptor() {
  rotate([0, 0, 270]) {
    // Points to the left molex hole.
    translate([30, -500, 0]) {
      color("Grey") {
        import("../connectors/receptor_084506001/molex_receptor.stl");
      }
    }
  }
}

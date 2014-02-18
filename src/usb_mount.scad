// A hole to fit the usb connector ID RR-111200-10

module usb_diagram() {
  // Dimmensions, check the drawing on the connectors folder
  diameter=25.50;
  height=23.65;
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

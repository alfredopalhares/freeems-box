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

module usb_mount() {
  color("Purple") {
  // Space that the molex should take inside the case
    rotate([90, 0, 0]) {
      linear_extrude(THICKNESS) {
        usb_diagram();
      }
    }
  }
}

//Genereted from the step file USBFireWire
module usb_receptor() {
  color("Grey") {
    import("../connectors/usb_RR-111200-10/usb_receptor.stl");
  }
}

module usb_gasket() {
  color("Grey") {
    import("../connectors/usb_RR-111200-10/rubber_gasket.stl");
  }
}

module usb_hex_nut() {
  color("Grey") {
    import("../connectors/usb_RR-111200-10/hex_nut.stl");
  }
}

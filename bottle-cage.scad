use <bicycle-mounts/bottle-cage.scad>;
include <parameters.scad>;

module middle_rod () {
  translate([0, middle_rod_y])
    rotate([middle_rod_x_rot, middle_rod_y_rot, 0])
      cylinder(r = rod_r, h = middle_rod_h);
}

module top_rod () {
  translate([0, 0, top_rod_z]) {
    rotate([top_rod_x_rot, 0, 0]) {
      rotate_extrude(angle = top_rod_angle) {
        translate([top_rod_d / 2 , 0, 0])
          circle(r = rod_r);
      }
    }
  }
}

module bottom_rod () {
  translate([0, 0, rod_r]) {
    translate([0, -bottle_d / 2])
      rotate([270, 0, 0]) cylinder(r = rod_r, h = bottle_d);

    rotate_extrude(angle = 360) {
      translate([(bottle_d + middle_rod_x) / 2, 0, 0])
        circle(r = rod_r);
    }
  }
}

module bottle_cage () {
  rotate([0, 0, 180]) {
    translate([-mount_w / 2, bottle_d / 2]) {
      cube([mount_w, mount_t, mount_h]);
    }
  }

  bottom_rod();

  translate([0, 0, rod_r]) {
    translate([top_rod_d / 2 - middle_rod_x, 0, 0]) middle_rod();
    translate([-top_rod_d / 2 + middle_rod_x, 0, 0]) mirror([1, 0, 0]) middle_rod();

    top_rod();
  }
}

bottle_cage();

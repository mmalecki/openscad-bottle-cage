use <bottle-cage.scad>;
include <parameters.scad>;

$fn = 100;

bottle_cage();
translate([0, 0, rod_r * 2])
  color("blue")
    cylinder(d = bottle_d, h = bottle_h);

// As per Wikipedia: https://en.wikipedia.org/wiki/Bottle_cage
bottle_d = 73;
bottle_h = 127; // Only used for mockup.

rod_r = 4;

top_rod_x_rot = 25;
top_rod_z = 75;
top_rod_angle = 360;
top_rod_d = (bottle_d + rod_r) / cos(top_rod_x_rot);

middle_rod_x_rot = 15;
middle_rod_y_rot = 5;
middle_rod_h = top_rod_z / cos(middle_rod_x_rot) + rod_r;
middle_rod_y = top_rod_z * tan(middle_rod_x_rot);
middle_rod_x = top_rod_z * tan(middle_rod_y_rot);

bottom_rod_angle = 360;

mount_w = 18;
mount_t = 8;
mount_h = top_rod_z;

var inst = instance_nearest(x, y, ObjPlayer);
move_towards_point(inst.x, inst.y, 1.5);
image_angle = point_direction(x, y, inst.x, inst.y);
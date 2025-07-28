Damage = 1;
Speed = 3.5;
Target = OBJEnemy;

var inst = instance_nearest(x, y, Target);
move_towards_point(inst.x, inst.y, Speed);
image_angle = point_direction(x, y, inst.x, inst.y);
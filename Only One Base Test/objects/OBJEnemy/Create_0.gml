MaxHealth = 100;
Health = 100;
Damage = 5;
Speed = 0.5;
DamageTaken = false;

var inst = instance_nearest(x, y, OBJSeed);
move_towards_point(inst.x, inst.y, Speed);
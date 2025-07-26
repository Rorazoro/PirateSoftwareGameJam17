
if (instance_exists(target)) {
	var inst = instance_nearest(x,y, ObjPlayer)
	
	if (distance_to_object(inst) < range) {
		ai = "attack";
	}
	else if (distance_to_object(inst) > range) {
		ai = "idle";
	}
	
	if (ai == "attack") {
		shoot_timer--;
		if (shoot_timer <= 0) {
			shoot_timer = shoot_time;
			instance_create_layer(x, y, "VFX", OBJTowerShot1 );
		}
	}
}
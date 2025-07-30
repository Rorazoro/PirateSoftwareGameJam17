
spawn_timer--;
if (spawn_timer <= 0) {
	spawn_timer = spawn_time;
	var spawnOriginX = RightSide ? spawnOriginXRightSide : spawnOriginXLeftSide;
	randSpawnX = spawnOriginX + random_range(-range, range)
	
	if (RightSide)
		show_debug_message("Spawning enemy on right side: " + string(randSpawnX));
	else
		show_debug_message("Spawning enemy on left side: " + string(randSpawnX));
		
	instance_create_layer(randSpawnX, spawnOriginY, "Instances", spawnedObj);
}
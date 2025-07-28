
spawn_timer--;
if (spawn_timer <= 0) {
	spawn_timer = spawn_time;
	randSpawnX = random_range(spawnOriginX, range)
	
	instance_create_layer(randSpawnX, spawnOriginY, "Instances", spawnedObj);
}
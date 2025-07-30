timer--;

if (timer <= 0) {
    //only shoot if enemy exists, prevents boom if all enemies die
    if (instance_exists(ObjEnemy)) {
        timer = time; // Reset timer
        
        
        instance_create_layer(npcx, npcy, "Instances", ObjBulletSlow);
    }
}

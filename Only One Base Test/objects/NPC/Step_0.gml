timer--;
//timer going down 1 every frame
if (timer <= 0){
	timer = time;
	
	instance_create_layer(npcx,npcy,0,Bullet);
	// wjen timer is <= to zero a Bullet is create at the npx origin point
	

}
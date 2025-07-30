//Movement Input

RightKey =  keyboard_check(ord("D"));
LeftKey =keyboard_check(ord("A"));

//Horizontal Movement
	//Direction
	MoveDir = RightKey - LeftKey

	//Speed
		Xspd = MoveDir * MoveSpd;

	//Horizontal Collision
	var _SubPixel = .5;
	if place_meeting(x + Xspd, y, OBJFloorTile)
	{
		//Stop
		Xspd =0;
	
	}

	//move
	x += Xspd;
	
	
	
	
	
	
	
	
//tower spawn

//tower cost
var spawn_cost = 100;

//space to spawn tower
if (keyboard_check_pressed(vk_space)) {
	
	//check if can afford
    if (global.gold >= spawn_cost) {
        instance_create_layer(x, y, "Instances", ObjTree);
        global.gold -= spawn_cost;
    } else {
        show_debug_message("u are broke lmfao!");
    }
}
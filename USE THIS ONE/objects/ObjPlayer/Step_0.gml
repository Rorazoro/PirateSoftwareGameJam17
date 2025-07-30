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
	if place_meeting(x + Xspd, y, ObjWall)
	{
		//Stop
		Xspd =0;
	
	}

	//move
	x += Xspd;
	
	if (RightKey) {
		if (sprite_index == SpritePlayerLeft) {
			sprite_index = SpritePlayerTurn
			image_xscale = 1
		}
		else {
			sprite_index = SpritePlayerRight
			image_xscale = 1
		}
		image_speed = 1;
	}
	else if (LeftKey) {
		if (sprite_index == SpritePlayerRight) {
			sprite_index = SpritePlayerTurn
			image_xscale = -1
		}
		else {
			sprite_index = SpritePlayerLeft
			image_xscale = 1
		}
		image_speed = 1;
	}
	else {
		image_speed = 0.5;
	}
	
	
	
	
	
	
	
	
//tower spawn


// Tower Selection Hotkey
if (keyboard_check_pressed(ord("1"))) global.selected_tower = ObjGun;
if (keyboard_check_pressed(ord("2"))) global.selected_tower = ObjSlow;
if (keyboard_check_pressed(ord("3"))) global.selected_tower = ObjLaser;


//tower cost
var spawn_cost = 0;


if (global.selected_tower == ObjGun) spawn_cost =100;
if (global.selected_tower == ObjSlow) spawn_cost =150;
if (global.selected_tower == ObjLaser) spawn_cost =200;

// space to spawn tower
if (keyboard_check_pressed(vk_space)) {
	
    // Check if a tower is selected
    if (is_undefined(global.selected_tower) || global.selected_tower == noone) {
        show_debug_message("No tower selected!");
    }
    else if (global.gold >= spawn_cost) {
        instance_create_layer(x, y, "Instances", global.selected_tower);
        global.gold -= spawn_cost;
    } else {
        show_debug_message("u are broke lmfao!");
    }
}
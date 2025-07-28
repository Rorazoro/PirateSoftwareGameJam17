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
if (distance_to_object(ObjPlayer) < 32) {
    can_interact = true;
} else {
    can_interact = false;
}

//Gives X gold when E is pressed

if (can_interact = true && keyboard_check_pressed(ord("E"))) {
    global.gold += gold_amount;
	
	show_debug_message("Gold increased to: " + string(global.gold));
}

	
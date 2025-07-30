// Update cooldown timer
if (mine_cooldown > 0) {
    mine_cooldown -= 1;
}

// distance check
if (distance_to_object(ObjPlayer) < 32) {
    can_interact = true;
} else {
    can_interact = false;
}

// mining has 5 sec cd
if (can_interact && keyboard_check_pressed(ord("E"))) {
    if (mine_cooldown <= 0) {
        global.gold += gold_amount;
        show_debug_message("Gold increased to: " + string(global.gold));
        mine_cooldown = 5 * room_speed; // 5-second cooldown
    } else {
        show_debug_message("Dawg chill");
    }
}
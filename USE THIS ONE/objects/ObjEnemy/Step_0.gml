if (instance_exists(target)) {
    
    // Do I need to get closer?
    var dx = x - target.x;
    
    // Move Toward Tree
    if (abs(dx) > attack_range) {
        // determines position relative to tree
        x += (dx > 0) ? -move_speed : move_speed;	
        //swing
    } else {
        attack_timer--;

        if (attack_timer <= 0) {
            attack_count += 1;
            target.hp -= damage;
            show_debug_message("Attacking" + string(attack_count));
           
            if (target.hp <= 0) {
                target.hp = 0; 
            }

            attack_timer = attack_cooldown;
        }
    }
}

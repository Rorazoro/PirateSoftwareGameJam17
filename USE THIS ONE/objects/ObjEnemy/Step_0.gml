if (instance_exists(target)) {
    
    // Do I need to get closer?
    var dx = x - target.x;
    
    // Move Toward Tree
    if (abs(dx) > attack_range) {
        // determines position relative to tree
      var actual_speed = (slow_timer > 0) ? move_speed * 0.5 : move_speed;
    x += (dx > 0) ? -actual_speed : actual_speed;	
        //swing
    } else {
        attack_timer--;

        if (attack_timer <= 0) {
            attack_count += 1;

            if (instance_exists(target)) {
                target.hp -= damage;
                show_debug_message("Attacking" + string(attack_count));

                if (target.hp <= 0) {
                    target.hp = 0; 
                    with (target) instance_destroy();
                }
            }

            attack_timer = attack_cooldown;
        }
    }
}

//boom enemy if die
if (hp <= 0) {
    instance_destroy(); // Enemy dies
}

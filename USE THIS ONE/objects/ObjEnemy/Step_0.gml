if (instance_exists(target)) {
    
    // Do I need to get closer?
    var dx = x - target.x;
    
    // Move Toward Tree
    if (abs(dx) > attack_range) {
        // determines position relative to tree
		var actual_speed = (slow_timer > 0) ? move_speed * 0.5 : move_speed;
		
		x += (dx > 0) ? -actual_speed : actual_speed;

		//move animation
		var move_anim_speed = actual_speed * move_anim_speed_mod;
		
		image_speed = move_anim_speed;
		sprite_index = SpriteEnemy;
		if (dx > 0) {
			image_xscale = -1;
		}
		else {
			image_xscale = 1;
		}

        //swing
    } else {
        attack_timer--;

        if (attack_timer <= 0) {
            attack_count += 1;
			
			//animate
			image_speed = 1;
			sprite_index = SpriteEnemyAttack;
			if (dx > 0) {
				image_xscale = -1;
			}
			else {
				image_xscale = 1;
			}

            if (instance_exists(target)) {
				if (!target.infinite_hp)
					target.hp -= damage;
                show_debug_message("Attacking" + string(attack_count));

                if (target.hp <= 0) {
                    target.hp = 0; 
                    with (target) instance_destroy();
                }
            }

			//image_speed = 0;
            attack_timer = attack_cooldown;
        }
    }
}

//boom enemy if die
if (hp <= 0) {
    instance_destroy(); // Enemy dies
}

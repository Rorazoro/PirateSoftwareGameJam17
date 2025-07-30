// Deal damage to the enemy
other.hp -= 5; // damage
other.is_slowed = true;
other.slow_timer = 60; // 1 second of slow
other.speed_mult = 0.5; // 50% speed

// Destroy the bullet after hitting
instance_destroy();

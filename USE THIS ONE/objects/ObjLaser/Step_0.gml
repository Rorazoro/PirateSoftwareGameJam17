// Reset target if it no longer exists or is out of range
if (!instance_exists(target) || point_distance(x, y, target.x, target.y) > attack_range) {
    target = noone;
}

// Look for a new target if we don’t have one
if (target == noone) {
    var nearest_dist = attack_range;
    with (ObjEnemy) {
        var dist = point_distance(other.x, other.y, x, y);
        if (dist < nearest_dist) {
            nearest_dist = dist;
            other.target = id;
        }
    }
}

// Damage Proc
if (target != noone) {
    target.hp -= damage_per_tick;
    
    // Optional: kill enemy if hp drops below 0
    if (target.hp <= 0) {
        with (target) {
            instance_destroy();
        }
        target = noone;
    }
}

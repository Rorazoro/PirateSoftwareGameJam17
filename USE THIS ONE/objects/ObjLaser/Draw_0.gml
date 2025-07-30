draw_self();

// Laser Animation
if (target != noone) {
    draw_set_color(c_red);
    draw_set_alpha(0.8);
    draw_line(x, y, target.x, target.y);
    draw_set_alpha(1);
}

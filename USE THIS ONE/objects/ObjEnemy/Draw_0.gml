
draw_self();
var bar_width = 40;
var bar_height = 6;
var hp_ratio = hp / max_hp;

// Background bar (gray)
draw_set_color(c_gray);
draw_rectangle(x - bar_width/2, y - sprite_height - 10, x + bar_width/2, y - sprite_height - 10 + bar_height, false);

// HP fill (green)
draw_set_color(c_lime);
draw_rectangle(x - bar_width/2, y - sprite_height - 10, x - bar_width/2 + (bar_width * hp_ratio), y - sprite_height - 10 + bar_height, false);

// Optional: Draw numerical HP
draw_set_color(c_white);
draw_text(x, y - sprite_height - 20, string(hp) + "/" + string(max_hp));


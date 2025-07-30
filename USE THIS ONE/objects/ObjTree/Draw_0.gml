draw_self();

// Health bar variables
var bar_x = x - sprite_width / 2;
var bar_y = y - sprite_height / 2 - 12;
var bar_width = sprite_width;
var bar_height = 6;
var hp_ratio = hp / max_hp;
var hp_bar_width = hp_ratio * bar_width;

// background
draw_set_color(c_blue);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// barfill
draw_set_color(merge_color(c_red, c_lime, hp_ratio));
draw_rectangle(bar_x, bar_y, bar_x + hp_bar_width, bar_y + bar_height, false);

// border
draw_set_color(c_lime);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);



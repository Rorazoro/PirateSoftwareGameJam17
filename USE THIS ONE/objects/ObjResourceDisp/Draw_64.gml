//Displayed Current Gold

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(16, 16, "Gold: " + string(global.gold));
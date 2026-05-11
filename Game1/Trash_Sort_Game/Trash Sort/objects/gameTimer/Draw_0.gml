draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_colour(c_black);
draw_set_alpha(0.75);
draw_rectangle(0, 0, 1280, 960, false);

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(font);

draw_text(5, 5, string(round(timer)) + " Seconds");
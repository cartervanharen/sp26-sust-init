draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(font);

// score
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
draw_text(640, 5, "Correct: " + string(curScore));

// mistakes
draw_set_halign(fa_right);
draw_text(1275, 5, "Incorrect: " + string(mistakes));
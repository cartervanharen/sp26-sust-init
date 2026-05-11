draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_alpha(1);

var text = "Here are the items you got incorrect, click on them to see where they should go or press space to continue";

draw_set_color(c_white);
draw_text_ext(room_width / 2, 0, text, 100, 1000);
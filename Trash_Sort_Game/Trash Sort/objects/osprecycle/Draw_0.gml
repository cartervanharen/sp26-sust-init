draw_set_valign(fa_center)
draw_set_halign(fa_middle)
text = "SPECIAL\n RECYCLE"
draw_set_color(c_white);
draw_text_ext(x- 1, room_height/2 -40, text,50,1000);
draw_text_ext(x+ 1, room_height/2 -40, text,50,1000);
draw_text_ext(x, room_height/2 -41, text,50,1000);
draw_text_ext(x, room_height/2 -39, text,50,1000);

// main text (purple)
draw_set_color(#4c9c2e);
draw_text_ext(x,room_height/2 -40, text,50,1000);
if (keyboard_check_pressed(vk_space)) {

    instance_destroy(); // destroys popup itself
}


t = target;
draw_set_valign(fa_middle)
draw_set_halign(fa_center)

draw_set_alpha(1)
draw_set_colour(c_black)
draw_rectangle(0,0,1280,960, false)


draw_set_color(c_white);
draw_text_ext(room_width*2/3 - 1, room_height/2, t.why, 100, 800);
draw_text_ext(room_width*2/3 + 1, room_height/2, t.why, 100, 800);
draw_text_ext(room_width*2/3, room_height/2 - 1, t.why, 100, 800);
draw_text_ext(room_width*2/3, room_height/2+ 1, t.why, 100, 800);

// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width*2/3, room_height/2, t.why, 100, 800);
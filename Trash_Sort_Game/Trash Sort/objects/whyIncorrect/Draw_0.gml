// if space is clicked ,destroys popup itself
if (keyboard_check_pressed(vk_space)) {
	global.showing = noone
    instance_destroy();
	
//
}else{
	t = target;
	global.showing = t
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)

	draw_set_alpha(1)
	draw_set_colour(c_black)
	draw_rectangle(0,0,1280,960, false)

	// main text (white)
	draw_set_color(c_white);
	draw_text_ext(room_width*2/3, room_height/2, t.why, 100, 800);
}
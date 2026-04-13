
draw_set_alpha(.5)
draw_set_font(font)
draw_set_colour(c_black)
draw_rectangle(0,0,1280,960,false)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


	draw_set_alpha(1)
	var txt = "We hope you learned something while playing!\n Correctly Sorted: " + string(global.totalcorr) + "\n Incorrectly Sorted: " + string(global.totalincorr) + "\n Click space to return to title";

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, room_height/2, txt,125,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,125,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,125,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,125,1000);

// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,125,1000);

if(keyboard_check_pressed(vk_space) and timer = 0){
	room_goto(Title)
}


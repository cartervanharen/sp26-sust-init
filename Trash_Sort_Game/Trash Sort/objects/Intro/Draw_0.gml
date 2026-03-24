

draw_set_alpha(temp_alp)
draw_set_font(font)
draw_set_colour(c_black)
draw_rectangle(0,0,1280,960,false)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(current = 1){
	draw_set_alpha(1)
	var txt = "Welcome to St Thomas!\nThe aim of this game is to help you learn where to throw commonly found items on campus!\n (CLICK SPACE TO CONTINUE)";

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, room_height/2, txt,150,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,150,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,150,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,150,1000);

// main text (black)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,150,1000);

}else if (current = 2){
		draw_set_alpha(1)
	var txt = "For now, click the trashcan above O'Shaughnessy Educational Center AKA OEC";

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, room_height/2, txt,200,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,200,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,200,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,200,1000);

// main text (black)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,200,1000);
	
	
}else{
	draw_set_alpha(1)
	var txt = "For now, click the trashcan above O'Shaughnessy Educational Center AKA OEC";

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, room_height/2, txt,200,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,200,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,200,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,200,1000);

// main text (black)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,200,1000);
	instance_create_layer(0,0,"trashcans",tcsTutorial)
	instance_destroy()
}
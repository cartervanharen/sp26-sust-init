

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
draw_text_ext(room_width/2 - 1, room_height/2, txt,125,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,125,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,125,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,125,1000);

// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,125,1000);

}else if (current = 2){
		draw_set_alpha(1)
	var txt = "YOUR OBJECTIVE: \n You will be shown an object and need to put it into the correct bin.\n CONTROLS:\n Use 'A' and 'D' to move left/right.\n Press the space bar to drop an item, once pressed it can't be undone \n(CLICK SPACE TO CONTINUE)"

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, room_height/2, txt,100,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,100,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,100,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,100,1000);

// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);
	
	
}else if (current = 3){
		draw_set_alpha(1)
	var txt = "In real life if a recycling/organic bin gets contaminated by trash items, the whole batch might be sent to a landfill. In this game, we will only keep track of the amount correctly/incorrectly sorted items.\n(CLICK SPACE TO CONTINUE)"

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, room_height/2, txt,100,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,100,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,100,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,100,1000);

// main text (black)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);
	
	
}else if (current = 4){
		draw_set_alpha(1)
	var txt = "For every 5 correctly sorted, the future difficulty of the building will be lowered by 1. After each game, all buildings you didn't visit will raise in difficulty\n(CLICK SPACE TO CONTINUE)";

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, room_height/2, txt,100,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,100,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,100,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,100,1000);

// main text (black)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);

	
}else if (current = 5){
		draw_set_alpha(1)
	var txt = "Please click the trashcan above O'Shaughnessy Educational Center AKA OEC!\n (CLICK SPACE TO CONTINUE)";

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, room_height/2, txt,125,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,125,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,125,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,125,1000);

// main text (black)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,125,1000);
	
	
}else{
	draw_set_alpha(1)
	var txt = "Please click the trashcan above O'Shaughnessy Educational Center AKA OEC!\n (CLICK SPACE TO CONTINUE)";

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, room_height/2, txt,125,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,125,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,125,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,125,1000);

// main text (black)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,125,1000);
	instance_create_layer(0,0,"trashcans",tcsTutorial)
	global.inDiag = false;
	instance_destroy()
}
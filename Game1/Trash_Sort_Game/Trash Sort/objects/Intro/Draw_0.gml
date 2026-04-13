

draw_set_alpha(temp_alp)
draw_set_font(font)
draw_set_colour(#52C415)
draw_rectangle(0,0,1280,960,false)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(current = 1){
	draw_set_alpha(1)
	var txt = "Welcome to St Thomas!\nThe aim of this game is to help you learn where to throw commonly found items on campus!\n (CLICK SPACE TO CONTINUE)";

// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,125,1000);

}else if (current = 2){
		draw_set_alpha(1)
	var txt = "Normally if you throw something into an incorrect bin, the whole batch might be seen as contaminated and sent to a landfill instead of being recycled/composted.\n(CLICK SPACE TO CONTINUE)"

// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);
	
	
}else if (current = 3){
		draw_set_alpha(1)
	var txt = "After playing one of the levels, you will get a chance to learn about incorrectly sorted items\n(CLICK SPACE TO CONTINUE)"
// main text (black)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);
	
	
}else if (current = 4){
		draw_set_alpha(1)
	var txt = "CONTROLS: Use 'A' and 'D' to move left/right \n Click the spacebar to quickly drop the current item \n SCORE: You will see the number of items correctly/incorrectly sorted. For every 5 you get correct, the difficulty level will lower if you replay it. ";
// outline (white)
// main text (black)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);


	
}else if (current = 5){
		draw_set_alpha(1)
	var txt = "Please click the trashcan above O'Shaughnessy Educational Center AKA OEC!\n (CLICK SPACE TO CONTINUE)";
// main text (black)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);
	
	
}else{
	if(temp_alp>0){
	draw_set_alpha(temp_alp)
	var txt = "Please click the trashcan above O'Shaughnessy Educational Center AKA OEC!\n (CLICK SPACE TO CONTINUE)";
	// main text (black)
	draw_set_color(#510c76);
	draw_text_ext(room_width/2, room_height/2, txt,100,1000);
	temp_alp-=.025
	if(!instance_exists(tcsTutorial)){
	instance_create_layer(0,0,"trashcans",tcsTutorial)
	global.inDiag = false;
	}
	}else{instance_destroy()}
}
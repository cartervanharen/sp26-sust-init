//to be played after completing tutorial 

draw_set_alpha(1)
draw_set_font(font)
draw_set_colour(c_black)
draw_rectangle(0,0,1280,960,false)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//play message 1 until the player clicks space
if(current = 1){
	draw_set_alpha(1)
	var txt = "You will see building names and a trashcan icon (seen below). The more red the trashcan, the quicker you have to be at sorting";
	draw_set_color(c_white);
	draw_rectangle(room_width/2-64,room_height*6/7-128,room_width/2+64,room_height*6/7+5, false)
	draw_sprite_ext(trashcanAnimation, image_index, room_width/2, room_height*6/7, 3, 3, 0, c_white, 1);

	// outline (white)
	// main text (black)
	draw_text_ext(room_width/2, room_height/2, txt,100,1000);

//play message 2 until the player clicks space
}else if (current = 2){
	draw_set_alpha(1)
	var txt = "The game will end once all trashcans are green, but you are able to replay any level!"
	// main text (white)
	draw_set_color(c_white);
	draw_text_ext(room_width/2, room_height/2, txt,100,1000);

//show the map
}else{
	//allows the message to fade
	if(temp_alp>0){
		draw_set_alpha(temp_alp)
		var txt = "The game will end once all trashcans are green, but you are able to replay any level!"
		// main text (black)
		draw_set_color(c_white);
		draw_text_ext(room_width/2, room_height/2, txt,100,1000);
		temp_alp-=.025
	//create totalial trashcan 
		if(!instance_exists(tcsTutorial)){
			instance_create_layer(0,0,"trashcans",tcsTutorial)
			global.inDiag = false;
		}
	//once its faded out, destroy itself
	}else{
		instance_destroy()
	}
}
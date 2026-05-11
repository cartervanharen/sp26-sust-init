

draw_set_alpha(temp_alp)
draw_set_font(font)
draw_set_colour(c_black)
draw_rectangle(0,0,1280,960,false)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(current = 1){
	draw_set_alpha(1)
	var txt = "Welcome to St Thomas!\n You will be shown items and \nyour job is to sort them\n (CLICK SPACE TO CONTINUE)";

// main text (white)
draw_set_color(c_white);
draw_text_ext(room_width/2, room_height/2, txt,125,1000);

}else if (current = 2){
		draw_set_alpha(1)
		draw_set_halign(fa_center);
draw_set_valign(fa_top);
	var txt = "Click an object to learn about it when not playing a game\n(CLICK SPACE TO CONTINUE)"

	// main text (white)
	draw_set_color(c_white);
	draw_text_ext(room_width/2, 100, txt,100,1000);
	show = instance_create_layer(640,500,"temp",napkin)
	
	
	
}else if (current = 3){
	if(instance_exists(napkin)and reset1 == 0){
		instance_destroy(napkin)
		reset1 +=1
	}
	if(!instance_exists(show)){
		show = instance_create_layer(640,500,"temp",napkin)
	}
	var txt = " Use 'A' and 'D' to move left/right \n (CLICK SPACE TO CONTINUE)";
	if(left and show.x > 320){
		show.x -= 320
	}
	if(right and show.x < 960){
		show.x += 320
	}
// outline (white)
// main text (black)
draw_set_color(c_white);
draw_text_ext(room_width/2, 200, txt,100,1000);


	
}else if (current = 4){
	if(instance_exists(napkin)){
		instance_destroy(napkin)
	}
	if(!instance_exists(show)){
		show = instance_create_layer(1000,200,"temp",cardboard)
	}
	
	if(show.y > 900){
		show.y = 100
	}
	if(held_s){
		show.y += 5
	}else{
		show.y += 1
	}
	
	
	draw_set_alpha(1)
	var txt = "Hold 'S' to drop an item faster";
// main text (white)
	draw_set_color(c_white);

	draw_text_ext(room_width/3, room_height/2, txt,100,400);
	
	
	
}else if (current = 5){

	if(instance_exists(cardboard)){
		instance_destroy(cardboard)
	}
		draw_set_alpha(1)
	var txt = "The redder the trash can,\n the faster the items will drop\n (CLICK SPACE TO CONTINUE)";
// main text (white)
	draw_set_color(c_white);
	draw_rectangle(room_width/2-64,room_height*5/7-128,room_width/2+64,room_height*5/7+5, false)
	draw_sprite_ext(trashcanAnimation, image_index, room_width/2, room_height*5/7, 3, 3, 0, c_white, 1);
	draw_text_ext(room_width/2, room_height/3, txt,100,1000);
	
	
}else if (current = 6){
		draw_set_alpha(1)
	var txt = "When playing the game, press tab to pause it\n (CLICK SPACE TO CONTINUE)";
// main text (white)
draw_set_color(c_white);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);
	
	
}else if (current = 7){
		draw_set_alpha(1)
	var txt = "Please click the trashcan above O'Shaughnessy Educational Center AKA OEC!\n (CLICK SPACE TO CONTINUE)";
// main text (white)
draw_set_color(c_white);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);
	
	
}else{
	if(temp_alp>0){
		draw_set_alpha(temp_alp)
		var txt = "Please click the trashcan above O'Shaughnessy Educational Center AKA OEC!\n (CLICK SPACE TO CONTINUE)";
		// main text (white)
		draw_set_color(c_white);
		draw_text_ext(room_width/2, room_height/2, txt,100,1000);
		temp_alp-=.025
		if(!instance_exists(tcsTutorial)){
			instance_create_layer(0,0,"trashcans",tcsTutorial)
			global.inDiag = false;
		}
	}else{
		instance_destroy()
	}
}
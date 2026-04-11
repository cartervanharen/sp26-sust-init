//to be played after completing tutorial 

draw_set_alpha(1)
draw_set_font(font)
draw_set_colour(#52C415)
draw_rectangle(0,0,1280,960,false)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//play message 1 until the player clicks space
if(current = 1){
	draw_set_alpha(1)
	var txt = "You will see building names and a trashcan icon (seen below). The more red the trashcan, the quicker you have to be at sorting";
	draw_set_color(#510c76);
	draw_rectangle(room_width/2-64,room_height*6/7-128,room_width/2+64,room_height*6/7+5, false)
	draw_sprite_ext(trashcanAnimation, image_index, room_width/2, room_height*6/7, 3, 3, 0, c_white, 1);

// outline (white)
// main text (black)
draw_text_ext(room_width/2, room_height/2, txt,100,1000);

//play message 2 until the player clicks space
}else if (current = 2){
		draw_set_alpha(1)
	var txt = "The game will end once all trashcans are green, but you're more that welcome to do cleared levels!"
	// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);

//show the map
}else{
draw_set_alpha(1)
var txt = "The game will end once all trashcans are green, but you're more that welcome to do cleared fully green levels!"

// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);	
	global.inDiag = false;
	instance_destroy()
}
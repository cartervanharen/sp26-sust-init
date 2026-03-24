

draw_set_alpha(temp_alp)
draw_set_font(font)
draw_set_colour(c_black)
draw_rectangle(0,0,1280,960,false)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(current = 1){
	draw_set_alpha(1)
	var txt = "Wow... a lot of those buildings sure are full of garbage to sort. Why dont you get a friend to help you clean? It is a lot easier to keep a clean location with more people helping.";

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
	var txt = "You will now get a 'friend' to help clean after each game. They will they will randomly lower the difficulty of a building"

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, room_height/2, txt,100,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,100,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,100,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,100,1000);

// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);	
}else{
	draw_set_alpha(1)
	var txt = "You will now get a 'friend' to help clean after each game. They will they will randomly lower the difficulty of a building"

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, room_height/2, txt,100,1000);
draw_text_ext(room_width/2 + 1, room_height/2, txt,100,1000);
draw_text_ext(room_width/2, room_height/2 - 1, txt,100,1000);
draw_text_ext(room_width/2, room_height/2 + 1, txt,100,1000);

// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/2, txt,100,1000);	
	global.inDiag = false;
	instance_destroy()
}
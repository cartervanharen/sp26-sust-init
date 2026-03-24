//check if space is clicked for fast drop
space = keyboard_check_pressed(vk_space)

//setting up font and color
draw_set_alpha(1)
draw_set_color(#8348ad)
draw_set_font(font)

//writing score on screen
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_text(640,5, "Correct: " + string(curScore))

//writing number of mistakes on screen
draw_set_halign(fa_right)
draw_set_valign(fa_top)
draw_text(1275,5, "Incorrect: " + string(mistakes))

	if(!global.dropping){
		randnum = irandom(array_length(global.dropthese)-1)
		global.dropping = true

			global.item = instance_create_layer(locX, 200, "gamehigh", global.dropthese[randnum])
			global.item.image_xscale = .6
			global.item.image_yscale = .6
		
	}else{
		//if true quick drop based on current location
		if(space){
			global.item.y = 940
					
			
		}else{
		//moves the item down based on speed
		global.item.y = global.item.y + global.fallSpeed
	
		//move item left if able
		if(left && global.item.x - 320 >=160){
			global.item.x = global.item.x - 320
		
		//move item right if able
		}else if (right && global.item.x + 320 <= 1120){
			global.item.x = global.item.x + 320
		}
		
	}
}
//check if space is clicked for fast drop
space = keyboard_check_pressed(vk_space)

//setting up font and color
draw_set_alpha(1)
draw_set_color(#90409a)
draw_set_font(font)

//writing score on screen
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_text(640,5, "Score: " + string(curScore))

//writing number of mistakes on screen
draw_set_halign(fa_right)
draw_set_valign(fa_top)
draw_text(1275,5, "Mistakes: " + string(mistakes))

//if mistakes are >3, stop the game entirely
if(mistakes<3){
	if(!global.dropping){
		endingLoc = irandom_range(1,4)
		global.dropping = true
	
		//item should be trash
		if(endingLoc == 1){
			trashNum = irandom_range(0,2)
			global.item = instance_create_layer(locX, 200, "gamehigh", trashArr[trashNum])
			global.item.image_xscale = .6
			global.item.image_yscale = .6
			global.type = "trash"
				
		//item should be recycle	
		}else if (endingLoc == 2){
			recycleNum = irandom_range(0,2)
			global.item = instance_create_layer(locX, 200, "gamehigh", recycleArr[recycleNum])
			global.item.image_xscale = .6
			global.item.image_yscale = .6
			global.type = "recycle"
		
		//item should be compost
		}else if (endingLoc == 3){
			organNum = irandom_range(0,6)
			global.item = instance_create_layer(locX, 200, "gamehigh", organArr[organNum])
			global.item.image_xscale = .6
			global.item.image_yscale = .6
			global.type = "organic"
	
	
		//item should be special recycle
		}else{
			specialNum = irandom_range(0,1)
			global.item = instance_create_layer(locX,200, "gamehigh", specialArr[specialNum])
			global.item.image_xscale = .6
			global.item.image_yscale = .6
			global.type = "special"
		
		}
	
	
	}else{
		//if true quick drop based on current location
		if(space){
			global.item.y = 940
		}
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
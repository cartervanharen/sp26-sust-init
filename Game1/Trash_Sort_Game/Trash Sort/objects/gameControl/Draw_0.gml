//setting up font and color
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(font)

//writing score on screen
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
draw_text(640,5, "Correct: " + string(curScore))

//writing number of mistakes on screen
draw_set_halign(fa_right)
draw_set_valign(fa_top)
draw_text(1275,5, "Incorrect: " + string(mistakes))
if(!global.fade){
	//draw one of the objects associated
	if(!global.dropping){
		randnum = irandom(array_length(global.dropthese)-1)
		global.dropping = true
		global.item = instance_create_layer(locX, 200, "gamehigh", global.dropthese[randnum])
		
	}else{
		//if true quick drop based on current location
		if(space){
			global.item.y = 940
					
			
		}else{
		//moves the item down based on speed
		global.item.y = global.item.y + global.fallSpeed
		
			//if special trash, use these values
			if(global.hasSpecial){
	
				//move item left if able
				if(left && global.item.x - 320 >=160){
					global.item.x = global.item.x - 320
	
				//move item right if able
				}else if (right && global.item.x + 320 <= 1120){
					global.item.x = global.item.x + 320
			
				}
			
			//if no special trash, use these values
			}else{
				//move item left if able
				if(left && global.item.x - 426 >=213){
					global.item.x = global.item.x - 426
	
				//move item right if able
				}else if (right && global.item.x + 426 <= 1065){
					global.item.x = global.item.x + 426
			
				}
		
			
			}
		}
	
	}
}
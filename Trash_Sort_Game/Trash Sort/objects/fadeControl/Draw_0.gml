//if moving to different location/room will be true
if (global.fade){
	//draw black square the gets progressivly darked
	draw_set_alpha(global.alpha)
	global.alpha += .025;
	draw_set_colour(c_black)
	draw_rectangle(0,0,1280,960,false)
	//once full darkness move to next location
	if(global.alpha >=1){
		if(room == Title){
			global.fade = false
			room_goto(Map)
		}else if (global.showNew){
			if(global.lvl == 1){
				global.fade = false
				room_goto(NewItemsLVL1)
				
			}else if(global.lvl == 2){
				global.fade = false
				room_goto(NewItemsLVL2)
				
			}else if(global.lvl == 3){
				global.fade = false
				room_goto(NewItemsLVL3)
				
			}else{
				global.fade = false
				room_goto(NewItemsLVL4)
				
			}
			
		}else{
			global.fade = false
			room_goto(global.tp)
		}
	}

//after moving to next location fade in
}else if( !global.fade and global.alpha != 0){
	draw_set_alpha(global.alpha)
	draw_set_colour(c_black)
	draw_rectangle(0,0,1280,960,false)
	global.alpha -= .025;
}
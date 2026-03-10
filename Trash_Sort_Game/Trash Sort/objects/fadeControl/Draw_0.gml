if (global.fade){
	draw_set_alpha(global.alpha)
	global.alpha += .025;
	draw_set_colour(c_black)
	draw_rectangle(0,0,1280,960,false)
	if(global.alpha >=1){
		if(room == Title){
			global.fade = false
			room_goto(Map)
		}
	}
	
}else if( !global.fade and global.alpha != 0){
	draw_set_alpha(global.alpha)
	draw_set_colour(c_black)
	draw_rectangle(0,0,1280,960,false)
	global.alpha -= .025;
}
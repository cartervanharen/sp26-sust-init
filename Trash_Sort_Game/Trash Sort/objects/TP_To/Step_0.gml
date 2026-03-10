clicked = mouse_check_button_pressed(mb_left)

if(global.tutoral and building != OEC){
	instance_destroy()
}

if(position_meeting(mouse_x,mouse_y,self)){
	if(clicked){
		global.fade = true
		global.tp = building
	}
}

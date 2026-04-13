//stops inputs when text on screen
if(!global.inDiag){

	clicked = mouse_check_button_pressed(mb_left)

	//if its still tutorial, only keep OEC
	if(global.tutorial and building != OECItems){
		instance_destroy()
		
	}

	//what building to move to
	if(position_meeting(mouse_x,mouse_y,self)){
		if(clicked){
			global.fade = true
			global.tp = building
		}
	}
}

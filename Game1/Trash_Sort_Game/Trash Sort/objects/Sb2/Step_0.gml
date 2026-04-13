clicked = mouse_check_button_pressed(mb_left)

if(position_meeting(mouse_x,mouse_y,self)){
	visible = true
	Sb1.visible = false
	if(clicked){
		global.fade = true
	}
}else{
	visible = false
	Sb1.visible = true
}
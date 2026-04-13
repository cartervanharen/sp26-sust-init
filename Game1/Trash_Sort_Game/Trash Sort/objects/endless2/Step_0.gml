clicked = mouse_check_button_pressed(mb_left)

if(position_meeting(mouse_x,mouse_y,self)){
	visible = true
	endless1.visible = false
}else{
	visible = false
	endless1.visible = true
}
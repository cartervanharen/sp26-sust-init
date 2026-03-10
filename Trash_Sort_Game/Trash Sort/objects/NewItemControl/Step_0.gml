space = keyboard_check_pressed(vk_space)

if(space){
	global.fade = true;
	global.showNew = false
	room_goto(global.tp)
	
}
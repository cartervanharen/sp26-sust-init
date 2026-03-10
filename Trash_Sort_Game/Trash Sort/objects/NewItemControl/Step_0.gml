space = keyboard_check_pressed(vk_space)

if(space){
	room_goto(global.tp)
	global.showNew = false
	
}
instance_destroy(gameControl)
if(timer =0){
	if (keyboard_check_pressed(vk_space) and current== 2){
		room_goto(global.tp)
	}else if (keyboard_check_pressed(vk_space) and current== 1){
		current = 2
	}
}
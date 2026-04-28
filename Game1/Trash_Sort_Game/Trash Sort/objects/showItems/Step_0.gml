instance_destroy(gameControl)
if(timer ==0){
	//show first text blurb
	if (keyboard_check_pressed(vk_space) and current== 1 ){
		current = 2
	//move to game if true
	} else if (!instance_exists(whyIncorrect) and keyboard_check_pressed(vk_space) and current== 2 and (!global.specRecinfo or (room != FreyItems))){
		global.fade = true
	//show text about special recycling only if not seen yet
	}else if (keyboard_check_pressed(vk_space) and current== 2 and global.specRecinfo and room == FreyItems ){
		global.specRecinfo = false
	}
}
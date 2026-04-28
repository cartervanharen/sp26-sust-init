tab = keyboard_check_pressed(vk_tab)

if(tab){
	global.pause = true
}

if(global.pause){
	instance_create_layer(x,y,"top",pause)
}

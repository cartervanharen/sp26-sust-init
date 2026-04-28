//which text blurb is being shown
left = keyboard_check_pressed(ord("A"))
right = keyboard_check_pressed(ord("D"))
if(keyboard_check_pressed(vk_space) and !instance_exists(whyIncorrect)){
	current +=1;	
}else{
	current = current
}
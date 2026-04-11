draw_set_font(font)

if(global.tutorial){
	instance_create_layer(0,0,"tutorial", Intro)
}else if (global.tutorial == false and global.showAfter == true){
	global.showAfter = false
	instance_create_layer(0,0,"trashcans", AfterTutorial)
	instance_create_layer(0,0,"trashcans", trashcanSummoner)
	

}else{
	
	number_done = 0
	for(i = 0; i < array_length(global.fullness)-1; i++){
		if(global.fullness[i] = 0){
			number_done +=1
		}else{
			break
		}
	}
	if(number_done == array_length(global.fullness)-1){
		room_goto(endScreen)
	}else{
		instance_create_layer(0,0,"trashcans", trashcanSummoner)
	}
	
}


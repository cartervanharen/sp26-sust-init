draw_set_font(font)

if(global.tutorial){
	instance_create_layer(0,0,"tutorial", Intro)
	
}else if (global.tutorial == false and global.showAfter == true){
	global.showAfter = false
	instance_create_layer(0,0,"trashcans", AfterTutorial)
	instance_create_layer(0,0,"trashcans", trashcanSummoner)
	
}else{

		instance_create_layer(0,0,"trashcans", trashcanSummoner)
}


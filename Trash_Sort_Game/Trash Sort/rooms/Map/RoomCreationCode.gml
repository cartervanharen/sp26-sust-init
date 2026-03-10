draw_set_font(font)

if(global.tutorial){
	instance_create_layer(0,0,"trashcans", tcsTutorial)
}else{
		instance_create_layer(0,0,"trashcans", trashcanSummoner)
}
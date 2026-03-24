draw_set_font(font)

if(global.tutorial){
	instance_create_layer(0,0,"tutorial", Intro)
}else if (global.day == 2){
	instance_create_layer(0,0,"trashcans", AddFriend)
	instance_create_layer(0,0,"trashcans", trashcanSummoner)
	

}else if (global.day = 5){
	instance_create_layer(0,0,"tutorial", endScreen)
}else{
	instance_create_layer(0,0,"trashcans", trashcanSummoner)
}
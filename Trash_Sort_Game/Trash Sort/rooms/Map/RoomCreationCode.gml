draw_set_font(font)

if(global.tutorial){
	instance_create_layer(0,0,"tutorial", Intro)
}else{
	instance_create_layer(0,0,"trashcans", trashcanSummoner)
}
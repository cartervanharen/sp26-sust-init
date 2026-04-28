draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_colour(c_black)
if(spawn){
	draw_rectangle(0,0,room_width,room_height, false)
	instance_create_layer(room_width/2,room_height/3,"top", gotoMap)
	instance_create_layer(room_width/2,room_height*2/3,"top", keepPlaying)

	spawn = false
}

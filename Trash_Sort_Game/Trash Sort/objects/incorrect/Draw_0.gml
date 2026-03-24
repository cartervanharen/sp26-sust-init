if(temp_alpha > 0){
	draw_set_alpha(temp_alpha)
	draw_set_colour(c_red)
	draw_rectangle(0,0,1280,960,false)
	temp_alpha -=.005
	
}else{
	instance_destroy()
}
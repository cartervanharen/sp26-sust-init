//slowly fade green out
if(temp_alpha > 0 and gameTimer.timer>1){
	draw_set_alpha(temp_alpha)
	draw_set_colour(c_green)
	draw_rectangle(0,0,1280,960,false)
	temp_alpha -=.02

//destroy trigger
}else{
	instance_destroy()
}


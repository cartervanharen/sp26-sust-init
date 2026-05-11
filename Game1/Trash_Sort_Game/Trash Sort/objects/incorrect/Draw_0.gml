//flash red fade
if(temp_alpha > 0 and gameTimer.timer>1){
	draw_set_alpha(temp_alpha)
	draw_set_colour(c_red)
	draw_rectangle(0,0,1280,960,false)
	temp_alpha -=.005

//destroy when done
}else{
	instance_destroy()
}
//go back to title if space is clicked and once intentional delay is over
if(keyboard_check_pressed(vk_space) and timer <= 0){
	room_goto(Title)
}
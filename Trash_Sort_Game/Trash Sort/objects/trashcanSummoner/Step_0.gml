number_done = 0
	for(i = 0; i < array_length(global.fullness)-1; i++){
		if(global.fullness[i] = 0){
			number_done +=1
		}else{
			break
		}
	}
	
	if(number_done == array_length(global.fullness)-1){
		room_goto(Rendscreen)
	}
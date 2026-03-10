if(place_meeting(x,y,global.item)){
	//if item meets the right bin
	if(global.type = type){
		gameControl.curScore +=1
		global.dropping = false
		instance_destroy(global.item)
		
	//if item meets the wrong bin
	}else{
		global.dropping = false
		gameControl.mistakes +=1
		instance_destroy(global.item)
	}
}
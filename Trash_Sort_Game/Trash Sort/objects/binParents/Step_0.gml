if(place_meeting(x,y,global.item) && instance_exists(gameControlLVL1)){
	//if item meets the right bin
	if(global.type = type){
		gameControlLVL1.curScore +=1
		global.dropping = false
		instance_destroy(global.item)
		
	//if item meets the wrong bin
	}else{
		global.dropping = false
		gameControlLVL1.mistakes +=1
		instance_destroy(global.item)
	}
}else if(place_meeting(x,y,global.item) && instance_exists(gameControlLVL2)){
	//if item meets the right bin
	if(global.type = type){
		gameControlLVL2.curScore +=1
		global.dropping = false
		instance_destroy(global.item)
		
	//if item meets the wrong bin
	}else{
		global.dropping = false
		gameControlLVL2.mistakes +=1
		instance_destroy(global.item)
	}
}else if(place_meeting(x,y,global.item) && instance_exists(gameControlLVL3)){
	//if item meets the right bin
	if(global.type = type){
		gameControlLVL3.curScore +=1
		global.dropping = false
		instance_destroy(global.item)
		
	//if item meets the wrong bin
	}else{
		global.dropping = false
		gameControlLVL3.mistakes +=1
		instance_destroy(global.item)
	}
}else if(place_meeting(x,y,global.item) && instance_exists(gameControlLVL4)){
	//if item meets the right bin
	if(global.type = type){
		gameControlLVL4.curScore +=1
		global.dropping = false
		instance_destroy(global.item)
		
	//if item meets the wrong bin
	}else{
		global.dropping = false
		gameControlLVL4.mistakes +=1
		instance_destroy(global.item)
	}
}

	timer -=1


	if(gameControl.mistakes >= 3){
		timer = 0
		global.dropping = false
		global.gamedone = true;
		room_goto(Map)
	}

	if(timer!=0){
		alarm[0] = 60
	}else{
		global.dropping = false
		global.gamedone = true;
		if(global.fullness[global.arrayNum ] - floor(gameControl.curScore/5) <= 0){
			global.fullness[global.arrayNum ] = 0
		}else{
			global.fullness[global.arrayNum] = global.fullness[global.arrayNum ] - floor(gameControl.curScore/5)
		}
		global.tutoral = false
		room_goto(Map)
	
	}
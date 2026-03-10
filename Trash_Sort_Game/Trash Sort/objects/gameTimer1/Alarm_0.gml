//lower timer
	timer -=1


//if mistakes >3, go back to map and add 1 to fullness 
	if(gameControlLVL1.mistakes >= 3){
		timer = 0
		for (var i = 0; i< array_length(global.fullness); i++){
			//if fullness is already 3, leave it
			if((1+ global.fullness[i]) < 4){
				global.fullness[i] = global.fullness[i]+1
			}
		}
		global.dropping = false
		global.gamedone = true;
		global.tutorial = false
		global.day +=1;
		room_goto(Map)
		
	//reset alarm to keep counting down seconds
	}else if(timer!=0){
		alarm[0] = 60
//game is finished with <3 mistakes, lower fullness based on criteria
	}else{
		global.tutorial = false
		global.dropping = false
		global.gamedone = true;
		global.day +=1;
		//if lowering would be negative, set to 0
		if(global.fullness[global.arrayNum ] - floor(gameControlLVL1.curScore/5) <= 0){
			global.fullness[global.arrayNum ] = 0
		//set fullness to current - lowering amount
		}else{
			global.fullness[global.arrayNum] = global.fullness[global.arrayNum ] - floor(gameControlLVL1.curScore/5)
		}
		for (var i = 0; i< array_length(global.fullness); i++){
			//if fullness is already 3 or the current building, leave it
			if(global.arrayNum != i and (global.fullness[i] + 1)< 4){
				global.fullness[i] = global.fullness[i]+1
			}
		}
		room_goto(Map)
	
	}
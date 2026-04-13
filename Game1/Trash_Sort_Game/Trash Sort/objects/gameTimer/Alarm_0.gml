
//lower timer
	timer -=1


//if mistakes >3, go back to map and add 1 to fullness 
if(timer!=0){
		alarm[0] = 60
//game is finished with <3 mistakes, lower fullness based on criteria
	}else{
		global.tutorial = false
		global.dropping = false
		global.gamedone = true;
		//if lowering would be negative, set to 0
		if(global.fullness[global.arrayNum ] - floor(gameControl.curScore/5) <= 0){
			global.fullness[global.arrayNum ] = 0
		//set fullness to current - lowering amount
		}else{
			global.fullness[global.arrayNum] = global.fullness[global.arrayNum ] - floor(gameControl.curScore/5)
		}
		global.totalcorr += gameControl.curScore
		global.totalincorr += gameControl.mistakes
		if(gameControl.mistakes >0){
			room_goto(WrongSortReason)
		}else{
			if(instance_exists(gameControl)){
				instance_destroy(gameControl)
			}
			global.fade = true;
			global.tp = Map
		}
	
	}
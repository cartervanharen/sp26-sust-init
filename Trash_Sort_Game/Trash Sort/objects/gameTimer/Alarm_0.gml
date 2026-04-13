
//lower timer by 1 second
timer -=1


// if there is still time, continue gam
if(timer!=0){
		alarm[0] = 60
		
//timer is 0, lower fullness based on criteria
}else{
		//set flags to allow a new game to start
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
		//get cumulative amount for end stats
		global.totalcorr += gameControl.curScore
		global.totalincorr += gameControl.mistakes
		
		//if there was a mistake(s), go to mistake screen
		if(gameControl.mistakes >0){
			room_goto(WrongSortReason)
		//no mistakes, go to map
		}else{
			//done to stop new objects from spawning
			if(instance_exists(gameControl)){
				instance_destroy(gameControl)
			}
			global.fade = true;
			global.tp = Map
		}
	
	}
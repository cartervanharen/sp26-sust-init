
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
		global.day +=1;
		//if lowering would be negative, set to 0
		if(global.fullness[global.arrayNum ] - floor((gameControl.curScore-gameControl.mistakes)/5) <= 0){
			global.fullness[global.arrayNum ] = 0
		//set fullness to current - lowering amount
		}else{
			global.fullness[global.arrayNum] = global.fullness[global.arrayNum ] - floor((gameControl.curScore-gameControl.mistakes)/5)
		}
		for (var i = 0; i< array_length(global.fullness); i++){
			//if fullness is already 3 or the current building, leave it
			if(global.arrayNum != i and (global.fullness[i]) < 3){
				global.fullness[i] = global.fullness[i]+1
			}
		}
		//if you have friends, lower trash lvl
		for (var j = 0; j<global.friendNum; j++){
			building = irandom_range(0,8)
			
			if((global.fullness[building] - 1) <= 0){
				global.fullness[building] = 0
			//set fullness to current - lowering amount
			}else{
				global.fullness[building] = global.fullness[building] -1
		
			}
			
		}
		global.totalcorr += gameControl.curScore
		global.totalincorr += gameControl.mistakes
		global.friendNum +=1;
		room_goto(Map)
	
	}
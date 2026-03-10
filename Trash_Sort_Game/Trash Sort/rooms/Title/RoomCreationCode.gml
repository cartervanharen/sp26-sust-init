//Type of objects can be trash, organic, recycle, special recycle
global.type = noone
global.dropping = false
//item that is being dropped
global.item = noone

//how full of trash is each location
//important to put it at 2x the size
//order is SCC (99,834), OSS (267,826), OWS (367,906), ASC (653,480), AQU (869,522),
//MCH (1172,819), JRC(1058,552), ARC(837,270), OEC (1161,294)
global.fullness = [0,0,1,1,1,1,2,2,3]
//which building in the arr currently in
global.arrayNum = -1

//how fast the trash will fall, changes based on lvl
global.tutorial = true
global.lvl = 1
global.fallSpeed = 1
//current day, should be 4 per lvl
global.day = 1;

//new item show if first day
if(global.day == 1){
	global.showNew = true
}else {
	global.showNew = false;
}
global.friendNum = 0;
//should screen fade black and current opactiy 
global.fade = false
global.alpha =0

//which building to tp to
global.tp = noone

//if a game is finished
global.gamedone = true

randomise()


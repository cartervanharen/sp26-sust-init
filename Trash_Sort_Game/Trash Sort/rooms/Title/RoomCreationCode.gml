//Type of objects can be trash, organic, recycle, special recycle
global.type = noone
global.dropping = false
//item that is being dropped
global.item = noone
global.dropthese = []
global.buildingdesc = " "

//how full of trash is each location
//important to put trashcan at 2x the size
//order is 0 SCC (99,834), 1 OSS (267,826), 2 OWS (367,906), 3 ASC (653,480), 4 FreyHall (1152,160),
//5 MCH (1172,819), 6 JRC(1058,552), 7 ARC(837,270), 8 OEC (1161,294), 9 Library (1120,448)
global.fullness = [0,1,2,2,2,2,2,1,0,1]
global.visited = [false,false,false,false,false,false,false,false,false,false]
//which building in the arr currently in
global.arrayNum = -1

//how fast the trash will fall, changes based on lvl
global.tutorial = true
global.lvl = 1
global.fallSpeed = 1
//current day, should be 4 per lvl
global.day = 1;

global.friendNum = 0;
//should screen fade black and current opactiy 
global.fade = false
global.alpha =0

//which building to tp to
global.tp = noone

//if a game is finished
global.gamedone = true

//
global.newGame = true

global.badSort = []

global.totalcorr = 0;
global.totalincorr = 0;

global.inDiag = true;


randomise()


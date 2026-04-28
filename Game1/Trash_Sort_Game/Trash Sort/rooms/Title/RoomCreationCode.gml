//Type of objects can be trash, organic, recycle, special recycle
global.type = noone
global.dropping = false
//item that is being dropped
global.item = noone
global.dropthese = []
global.buildingdesc = " "

//how full of trash is each location
//important to put trashcan at 2x the size
//0 ASC (158,745), 1 FreyHall (1129,110), 2 MUR (898,333), 3 JRC(931,854),
//, 4 OEC (1110,374), 5 Library (1110,681)
global.fullness = [3,3,2,1,1,2]
//global.fullness = [0,0,0,0,0,1,0]
//which building in the arr currently in
global.arrayNum = -1

//how fast the trash will fall, changes based on lvl
global.tutorial = true
global.lvl = 1
global.fallSpeed = 1

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

global.showing = noone

global.totalcorr = 0;
global.totalincorr = 0;

global.inDiag = true;

global.showAfter = true
global.hasSpecial = false

global.specRecinfo = true

global.pause = false

randomise()


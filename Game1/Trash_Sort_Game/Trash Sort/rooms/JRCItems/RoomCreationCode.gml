global.arrayNum = 3
global.gamedone = false
if(global.fullness[global.arrayNum ] == 0){
	global.fallSpeed = 1;
}else if(global.fullness[global.arrayNum ] == 1){
	global.fallSpeed = 2;
}else if(global.fullness[global.arrayNum ] == 2){
	global.fallSpeed = 4;
}else {
	global.fallSpeed = 5;
}

//6
global.dropthese = [pencil, utensils, chip, paper, tincan, glass, banana, teabag, tissue]
global.tp = JRC
global.hasSpecial = false
global.buildingdesc = "John Roach Center (JRC) is the place for libral arts related classes .\n Click space to see common items" 
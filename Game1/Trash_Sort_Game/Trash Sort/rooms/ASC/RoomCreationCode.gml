global.arrayNum = 0
global.gamedone = false
instance_create_layer(0,0,"gamehigh",gameControl)
if(global.fullness[global.arrayNum ] == 0){
	global.fallSpeed = 1;
}else if(global.fullness[global.arrayNum ] == 1){
	global.fallSpeed = 2;
}else if(global.fullness[global.arrayNum ] == 2){
	global.fallSpeed = 3;
}else {
	global.fallSpeed = 4;
}

//3
global.hasSpecial = false
global.dropthese = [gum, chip, Pen, glass, tincan, paper, burger, compcup, napkin]
global.buildingdesc = "Anderson Student Center (ASC) is the place to go to get some food or chill out. \n Click space to see common items" 
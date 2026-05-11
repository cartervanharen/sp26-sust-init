global.arrayNum = 1
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

//4
global.hasSpecial = true
global.dropthese = [takeout, waxpaper, milkcarton, bottles, scraps, coffee, plasticbag, battery]
global.buildingdesc = "Frey is one of the residence halls at St Thomas.\n Click space to see common items" 
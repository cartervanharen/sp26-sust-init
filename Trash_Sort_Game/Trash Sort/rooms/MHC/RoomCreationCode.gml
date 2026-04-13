global.arrayNum = 2
global.gamedone = false
instance_create_layer(0,0,"gamehigh",gameControl)
if(global.fullness[global.arrayNum ] == 0){
	global.fallSpeed = 1;
}else if(global.fullness[global.arrayNum ] == 1){
	global.fallSpeed = 2;
}else if(global.fullness[global.arrayNum ] == 2){
	global.fallSpeed = 4;
}else {
	global.fallSpeed = 5;
}

//5

global.hasSpecial = true
global.dropthese = [waxpaper, takeout, cardboard, milkcarton, scraps, tissue, plasticbag, battery]
global.buildingdesc = "Murphy-Herrick Center contain the campus store, classes, and a residence hall up top. Next to the campus store is the special recycling bin! the\n Click space to see common items " 
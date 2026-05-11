global.arrayNum = 1
global.gamedone = true
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
draw_set_halign(fa_center)
draw_set_valign(fa_top)
global.hasSpecial = true
global.dropthese = [takeout, waxpaper, milkcarton, bottles, scraps, coffee, plasticbag, battery]
global.tp = Frey
global.buildingdesc = "Frey is one of the residence halls at St Thomas.\n Click space to see common items" 
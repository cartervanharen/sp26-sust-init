global.arrayNum = 1
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

//4
global.dropthese = [coffee,scraps,battery,lightbulb,takeout,cardboard]
global.tp = Frey
draw_set_alpha(.5)
draw_set_colour(#52C415)
draw_set_font(font)
global.buildingdesc = "Frey is one of the residence halls at St Thomas.\n Click space to see common items" 
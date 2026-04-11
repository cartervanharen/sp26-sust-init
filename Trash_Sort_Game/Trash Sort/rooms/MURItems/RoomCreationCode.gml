global.arrayNum = 2
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

//5
global.dropthese = [writepaper,gum,can,candywrapper,apple]
global.tp = MUR
draw_set_alpha(.5)
draw_set_colour(#52C415)
draw_set_font(font)
global.buildingdesc = "McNeely Hall (MCH) is the place for business related classes.\n Click space to see common items " 
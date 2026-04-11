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
global.dropthese = [writepaper,gum,can,candywrapper,orange]
global.tp = JRC
draw_set_alpha(.5)
draw_set_colour(#52C415)
draw_set_font(font)
global.buildingdesc = "John Roach Center (JRC) is the place for libral arts related classes .\n Click space to see common items" 
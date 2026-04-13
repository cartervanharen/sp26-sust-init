global.arrayNum = 4
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

//7
global.dropthese = [banana,can,gum,candywrapper,chip,teabag]
global.tp = ARC
draw_set_alpha(.5)
draw_set_colour(#52C415)
draw_set_font(font)
global.buildingdesc = "Anderson Athletic and Recreation Complex (ARC) is where to go to work out or play/see a sports game\n Click space to see common items" 
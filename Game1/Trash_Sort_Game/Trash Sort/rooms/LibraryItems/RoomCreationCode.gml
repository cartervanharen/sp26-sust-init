global.arrayNum = 6
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

//9 OSF
global.dropthese = [apple,gum,chip,can,paper,candywrapper]
global.tp = Library
draw_set_alpha(.5)
draw_set_colour(#52C415)
draw_set_font(font)
global.buildingdesc = "O'Shaughnessy-Frey Library Center (OSF) is the main library at St Thomas.\n Click space to see common items" 
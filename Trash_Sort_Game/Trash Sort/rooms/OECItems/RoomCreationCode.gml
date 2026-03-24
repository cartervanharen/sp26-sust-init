global.arrayNum = 8
global.gamedone = false
if(global.fullness[global.arrayNum ] == 0){
	global.fallSpeed = 1;
}else if(global.fullness[global.arrayNum ] == 1){
	global.fallSpeed = 3;
}else if(global.fullness[global.arrayNum ] == 2){
	global.fallSpeed = 4;
}else {
	global.fallSpeed = 6;
}

//8 gum,candywrapper,chip,bottles,printpaper,apple,compcup
global.dropthese = [gum,candywrapper,chip,bottles,printpaper,apple,compcup]
global.buildingdesc = "O'Shaughnessy Educational Center (OEC) the place for communications, media, economics and foreign languages classes .\n\n\n\n\n\n Click space to start game" 
global.tp = OEC
draw_set_alpha(.5)
draw_set_colour(c_black)
draw_set_font(font)

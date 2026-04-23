global.arrayNum = 4
global.tutorial = false
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

//8 gum,candywrapper,chip,bottles,printpaper,apple,compcup
global.dropthese = [gum,pencil,Pen,can,glass,paper,apple,teabag,tissue]
global.buildingdesc = "O'Shaughnessy Educational Center (OEC) the place for communications, media, economics and foreign languages classes .\n Click space to see what items to expect" 
global.tp = OEC
global.hasSpecial = false
draw_set_alpha(.5)
draw_set_colour(#52C415)
draw_set_font(font)

global.arrayNum = 2
global.gamedone = false
instance_create_layer(0,0,"gamehigh",gameControl)
if(global.fullness[global.arrayNum ] == 0){
	global.fallSpeed = 1;
}else if(global.fullness[global.arrayNum ] == 1){
	global.fallSpeed = 3;
}else if(global.fullness[global.arrayNum ] == 2){
	global.fallSpeed = 4;
}else {
	global.fallSpeed = 6;
}

//2
global.dropthese = [printpaper,gum,can,candywrapper,orange]
global.tp = OWS
draw_set_alpha(.5)
draw_set_colour(c_black)
draw_set_font(font)
global.buildingdesc = "Owens Science Hall (OWS) is mainly for science related classes .\n Click space to see common items" 
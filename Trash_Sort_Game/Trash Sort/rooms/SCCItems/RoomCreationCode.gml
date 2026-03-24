global.arrayNum = 0
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

//0
global.dropthese = [writepaper,gum,can,candywrapper,banana]
global.tp = SCC
draw_set_alpha(.5)
draw_set_colour(c_black)
draw_set_font(font)
global.buildingdesc = "Schoenecker Center (SCC) has classes related to the arts, sciences, and engineering \n Click space to see common items" 
global.arrayNum = 6
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

//6
JRCitems = [writepaper,gum,can,candywrapper,orange]
JRCdes = "John Roach Center (JRC) is the place for libral arts related classes .\n Click space to see common items" 
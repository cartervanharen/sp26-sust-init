global.arrayNum = 8
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

//8 gum,candywrapper,chip,bottles,printpaper,apple,compcup
global.dropthese = [apple]
global.buildingdesc = "O'Shaughnessy Educational Center (OEC) the place for communications, media, economics and foreign languages classes .\n Click space to see common items" 
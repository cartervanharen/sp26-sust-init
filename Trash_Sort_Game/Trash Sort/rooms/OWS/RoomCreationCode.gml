global.arrayNum = 8
global.gamedone = false
if (global.lvl == 1){
	instance_create_layer(0,0,"gamehigh",gameControlLVL1)
	
}else if (global.lvl == 2){
	instance_create_layer(0,0,"gamehigh",gameControlLVL2)

}else if (global.lvl == 3){
	instance_create_layer(0,0,"gamehigh",gameControlLVL3)
	
}else{
	instance_create_layer(0,0,"gamehigh",gameControlLVL4)
}
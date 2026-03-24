global.arrayNum = 9
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

//9 OSF
Libitems = [apple,gum,chip,can,paper,candywrapper]
global.tp = Library
draw_set_alpha(.5)
draw_set_colour(c_black)
draw_set_font(font)
Libdes = "O'Shaughnessy-Frey Library Center (OSF) is the main library at St Thomas.\n Click space to see common items" 
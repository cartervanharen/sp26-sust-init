global.arrayNum = 3
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

//3
ASCitems = [burger,chicken,compcup,napkin,glass,ketchup,utensils]
global.tp = ASC
draw_set_alpha(.5)
draw_set_colour(c_black)
draw_set_font(font)
ASCdes = "Anderson Student Center (ASC) is the place to go to get some food or chill out. \n Click space to see common items" 

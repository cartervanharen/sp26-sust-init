global.arrayNum = 0
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

//3
global.dropthese = [burger,chicken,napkin,glass,ketchup,utensils]
global.tp = ASC
draw_set_alpha(.5)
draw_set_colour(#52C415)
draw_set_font(font)
global.buildingdesc = "Anderson Student Center (ASC) is the place to go to get some food or chill out. \n Click space to see common items" 

global.arrayNum = 2
global.gamedone = true
if(global.fullness[global.arrayNum ] == 0){
	global.fallSpeed = 1;
}else if(global.fullness[global.arrayNum ] == 1){
	global.fallSpeed = 2;
}else if(global.fullness[global.arrayNum ] == 2){
	global.fallSpeed = 4;
}else {
	global.fallSpeed = 5;
}

//5
global.dropthese = [ketchup, takeout, cardboard, milkcarton, teabag, tissue, plasticbag, battery]
global.tp = MHC
draw_set_alpha(.5)
draw_set_colour(#52C415)
draw_set_font(font)
global.hasSpecial= true
global.buildingdesc = "Murphy-Herrick Center contain the campus store, classes, and a residence hall up top. Next to the campus store is the special recycling bin!\n Click space to see common items " 
global.arrayNum = 5
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

//9 OSF
global.dropthese = [gum,candy,chip, paper, tincan, bottles, compcup, apple, teabag ]
global.tp = Library
global.hasSpecial = false
global.buildingdesc = "O'Shaughnessy-Frey Library Center (OSF) is the main library at St Thomas.\n Click space to see common items" 
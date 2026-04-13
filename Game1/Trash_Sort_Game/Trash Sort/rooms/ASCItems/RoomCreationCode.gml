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
global.hasSpecial = false
global.dropthese = [ketchup, waxpaper, utensils, paper,can, bottles, burger, napkin, chicken]
global.tp = ASC
global.buildingdesc = "Anderson Student Center (ASC) is the place to go to get some food or chill out. \n Click space to see common items" 

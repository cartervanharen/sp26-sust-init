//Number of mistakes made
mistakes = 0
//Current userscore
curScore = 0
//if the game should start
start = false
//is an item already on screen
global.dropping = false
randnum = irandom(array_length(global.dropthese)-1)

//will be used if special trash is there to line up
if(global.hasSpecial){
//Starting above which bin
startingDrop = random_range(1,4)
locX = 480
//what array should it pull objects from
endingLoc = random_range(1,4)

//otherwise use to to line up
}else{
	
	//Starting above which bin
startingDrop = random_range(1,4)
locX = 639
//what array should it pull objects from
endingLoc = random_range(1,4)
	
	
}

//quickdrop if space is clicked
space = false

fallSpeed = global.fallSpeed



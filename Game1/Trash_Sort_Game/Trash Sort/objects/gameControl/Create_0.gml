//Number of mistakes made
mistakes = 0
//Current userscore
curScore = 0
//if the game should start
start = false
//is an item already on screen
global.dropping = false
randnum = irandom(array_length(global.dropthese)-1)


//Starting above which bin
startingDrop = random_range(1,4)
locX = 480
//what array should it pull objects from
endingLoc = random_range(1,4)

//what random object should be pulled
trashNum = random_range(0,1)
trashArr = [chip,gum,takeout,waxpaper,ketchup,utensils]

recycleNum = random_range(0,1)
recycleArr = [paper,cardboard,milkcarton,bottles,tincan,glass]

organNum = random_range(0,3)
organArr = [burger,apple,scraps,chicken,napkin,tissue,compcup,orgfork,coffee,teabag,flowers]

specialNum = random_range(0,0)
specialArr = [battery,inkcart,lightbulb,plasticbag]

//quickdrop if space is clicked
space = false



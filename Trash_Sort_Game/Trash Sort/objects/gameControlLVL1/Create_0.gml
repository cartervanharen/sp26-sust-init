//Number of mistakes made
mistakes = 0
//Current userscore
curScore = 0
//if the game should start
start = false
//is an item already on screen
global.dropping = false


//Starting above which bin
startingDrop = random_range(1,4)
locX = 480
//what array should it pull objects from
endingLoc = random_range(1,4)

//what random object should be pulled
trashNum = random_range(0,1)
trashArr = [t1,t2,t3,t4,t5,t6]

recycleNum = random_range(0,1)
recycleArr = [r1,r2,r3,r4,r5,r6]

organNum = random_range(0,3)
organArr = [o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13]

specialNum = random_range(0,0)
specialArr = [s1,s2,s3,s4]

//quickdrop if space is clicked
space = false



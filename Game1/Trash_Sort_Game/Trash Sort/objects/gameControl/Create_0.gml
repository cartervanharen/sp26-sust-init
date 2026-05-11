mistakes = 0;
curScore = 0;

start = false;

global.dropping = false;
global.item = noone;

randnum = 0;
space = false;

fallSpeed = global.fallSpeed;

if (global.hasSpecial) {
    startingDrop = random_range(1, 4);
    locX = 480;
    endingLoc = random_range(1, 4);
} else {
    startingDrop = random_range(1, 4);
    locX = 639;
    endingLoc = random_range(1, 4);
}
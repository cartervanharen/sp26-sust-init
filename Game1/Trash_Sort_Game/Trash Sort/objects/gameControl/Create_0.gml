// Number of mistakes made
mistakes = 0;

// Current score
curScore = 0;

// game start flag
start = false;

// item state
global.dropping = false;
global.item = noone;

// random index safety
randnum = 0;

// movement setup
space = false;

// fall speed
fallSpeed = global.fallSpeed;

// drop positioning
if (global.hasSpecial) {
    startingDrop = random_range(1, 4);
    locX = 480;
    endingLoc = random_range(1, 4);
} else {
    startingDrop = random_range(1, 4);
    locX = 639;
    endingLoc = random_range(1, 4);
}
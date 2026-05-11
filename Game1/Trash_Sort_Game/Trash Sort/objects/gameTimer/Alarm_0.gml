if (global.pause) exit;

// stop alarm from running after game ends
if (global.gamedone) exit;

if (timer > 0) {

    timer -= 0.25;

    alarm[0] = room_speed / 4;

} 
else {

    global.tutorial = false;
    global.dropping = false;
    global.gamedone = true;

    var reduce = floor(gameControl.curScore / 5);

    global.fullness[global.arrayNum] =
        max(0, global.fullness[global.arrayNum] - reduce);

    global.totalcorr += gameControl.curScore;
    global.totalincorr += gameControl.mistakes;

    if (gameControl.mistakes > 0) {
        global.tp = WrongSortReason;
    } 
    else {
        global.tp = Map;
    }

    global.fade = true;

    // stop future alarm execution
    alarm[0] = -1;
}
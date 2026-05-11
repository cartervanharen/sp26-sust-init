if (global.pause) exit;

if (timer > 0) {
    timer -= 1;
    alarm[0] = room_speed;
} 
else {
    global.tutorial = false;
    global.dropping = false;
    global.gamedone = true;

    var reduce = floor(gameControl.curScore / 5);

    global.fullness[global.arrayNum] = max(0, global.fullness[global.arrayNum] - reduce);

    global.totalcorr += gameControl.curScore;
    global.totalincorr += gameControl.mistakes;

    if (gameControl.mistakes > 0) {
        room_goto(WrongSortReason);
    } 
    else {
        global.fade = true;
        global.tp = Map;
    }
}
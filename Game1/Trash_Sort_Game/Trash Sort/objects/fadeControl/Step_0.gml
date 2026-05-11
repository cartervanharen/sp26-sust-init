if (global.alpha > 1) {
    global.alpha = 1;
}

if (global.alpha < 0) {
    global.alpha = 0;
}

// change room after fade completes
if (changing_room) {

    changing_room = false;
    global.fade = false;

    // safety check
    if (room == Title) {

        room_goto(Map);

    } 
    else if (global.tp != -1 && room != global.tp) {

        room_goto(global.tp);

    }
}
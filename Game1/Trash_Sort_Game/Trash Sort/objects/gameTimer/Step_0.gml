if (global.pause && !was_paused) {

    saved_alarm = alarm[0];
    alarm[0] = -1;

    was_paused = true;
}

if (!global.pause && was_paused) {

    alarm[0] = (saved_alarm != -1)
        ? saved_alarm
        : room_speed / 4;

    saved_alarm = -1;
    was_paused = false;
}
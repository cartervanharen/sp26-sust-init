// detect pause toggle
if (global.pause && !was_paused) {
    // just paused → save and stop alarm
    saved_alarm = alarm[0];
    alarm[0] = -1;
    was_paused = true;
}

if (!global.pause && was_paused) {
    // just unpaused → restore alarm
    if (saved_alarm != -1) {
        alarm[0] = saved_alarm;
    } else {
        alarm[0] = 60;
    }
    saved_alarm = -1;
    was_paused = false;
}
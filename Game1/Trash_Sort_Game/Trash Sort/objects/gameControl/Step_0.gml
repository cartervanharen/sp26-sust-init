if (global.gamedone) exit;

// input
left = keyboard_check_pressed(ord("A"));
right = keyboard_check_pressed(ord("D"));
hold_S = keyboard_check(ord("S"));

// spawn item
if (!global.dropping && !global.gamedone) {

    randnum = irandom(array_length(global.dropthese) - 1);

    global.dropping = true;
    global.item = instance_create_layer(locX, 200, "gamehigh", global.dropthese[randnum]);

    if (instance_exists(global.item)) {
        global.item.image_xscale = 0.5;
        global.item.image_yscale = 0.5;
    }
}

// move item
if (!global.gamedone && instance_exists(global.item) && !global.fade && !global.pause && gameTimer.timer>0) {
	if (global.gamedone) exit;
    var spd = global.fallSpeed;

    if (hold_S) spd = 5;

    global.item.y += spd;
    if (global.hasSpecial) {
        if (left && global.item.x - 320 >= 160) global.item.x -= 320;
        else if (right && global.item.x + 320 <= 1120) global.item.x += 320;
    } 
    else {
        if (left && global.item.x - 426 >= 213) global.item.x -= 426;
        else if (right && global.item.x + 426 <= 1065) global.item.x += 426;
    }
}
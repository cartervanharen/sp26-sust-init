// input
left = keyboard_check_pressed(ord("A"));
right = keyboard_check_pressed(ord("D"));
hold_S = keyboard_check(ord("S"));

// spawn item safely
if (!global.dropping) {
    randnum = irandom(array_length(global.dropthese) - 1);

    global.dropping = true;
    global.item = instance_create_layer(
        locX, 200, "gamehigh", global.dropthese[randnum]
    );

    if (instance_exists(global.item)) {
        global.item.image_xscale = 0.75;
        global.item.image_yscale = 0.75;
    }
}

// move item safely
if (instance_exists(global.item) && !global.fade && !global.pause) {

    var fallSpeed = global.fallSpeed;

    if (hold_S) {
        fallSpeed = 10;
    }

    global.item.y += fallSpeed;

    // movement
    if (global.hasSpecial) {
        if (left && global.item.x - 320 >= 160) {
            global.item.x -= 320;
        } 
        else if (right && global.item.x + 320 <= 1120) {
            global.item.x += 320;
        }
    } 
    else {
        if (left && global.item.x - 426 >= 213) {
            global.item.x -= 426;
        } 
        else if (right && global.item.x + 426 <= 1065) {
            global.item.x += 426;
        }
    }
}
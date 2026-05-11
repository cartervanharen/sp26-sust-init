// fade out
if (global.fade) {

    draw_set_alpha(global.alpha);
    draw_set_colour(c_black);
    draw_rectangle(0, 0, 1280, 720, false);

    global.alpha += 0.025;

    // trigger room change next step
    if (global.alpha >= .5) {

        global.alpha = .5;
        changing_room = true;
    }
}

// fade in
else if (!global.fade) {

    draw_set_alpha(global.alpha);
    draw_set_colour(c_black);
    draw_rectangle(0, 0, 1280, 720, false);

    global.alpha -= 0.025;

    if (global.alpha < 0) {
        global.alpha = 0;
    }
}
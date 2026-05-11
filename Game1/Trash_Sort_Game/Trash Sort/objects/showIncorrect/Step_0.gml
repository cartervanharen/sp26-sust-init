if (!built) {

    built = true;

    var cols = 3;
    var spacing_x = 400;
    var spacing_y = 175;
    var start_x = 300;
    var start_y = 350;

    for (var i = 0; i < array_length(global.badSort); i++) {

        var obj = global.badSort[i];

        var col = i mod cols;
        var row = i div cols;

        var x_pos = start_x + col * spacing_x;
        var y_pos = start_y + row * spacing_y;

        var inst = instance_create_layer(x_pos, y_pos, "mistakes", obj);

        // half size
        inst.image_xscale = 0.5;
        inst.image_yscale = 0.5;
    }
}

if(instance_exists(whyIncorrect)){
	timer = 1
}

if (timer <= 0 && keyboard_check_pressed(vk_space)) {

    global.badSort = [];
    room_goto(Map);
}
if (place_meeting(x, y, global.item) && instance_exists(gameControl)) {

    var obj = global.item.object_index;

    // correct bin
    if (global.type == type) {

        gameControl.curScore += 1;
        global.dropping = false;

        instance_create_layer(0, 0, "gamehigh", correct);
        instance_destroy(global.item);

    // wrong bin
    } else {

        global.dropping = false;
        gameControl.mistakes += 1;

        instance_create_layer(0, 0, "gamehigh", incorrect);

		//store incorrectly stored items for later
        if (!array_contains(global.badSort, obj)) {
            array_push(global.badSort, obj);
        }

        instance_destroy(global.item);
    }
}
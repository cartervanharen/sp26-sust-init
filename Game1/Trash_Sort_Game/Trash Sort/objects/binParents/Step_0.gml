if (global.gamedone) exit;

if (instance_exists(global.item) && instance_exists(gameControl) && gameTimer.timer>.5) {

    if (place_meeting(x, y, global.item)) {

        var obj = global.item.object_index;

        if (global.type == type) {

            gameControl.curScore += 1;
            global.dropping = false;

            instance_create_layer(0, 0, "gamehigh", correct);
			
			if(instance_exists(global.item)){
	            var old_item = global.item;
	            global.item = noone;
	            instance_destroy(old_item);
			}

        } 
        else {

            global.dropping = false;
            gameControl.mistakes += 1;

            instance_create_layer(0, 0, "gamehigh", incorrect);

            if (!array_contains(global.badSort, obj)) {
                array_push(global.badSort, obj);
            }
			
           if(instance_exists(global.item)){
	            var old_item = global.item;
	            global.item = noone;
	            instance_destroy(old_item);
			}
        }
    }
}
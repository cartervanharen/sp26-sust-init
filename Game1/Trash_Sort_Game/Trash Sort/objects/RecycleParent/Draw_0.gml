
draw_self();

if (room == WrongSortReason) {

    if (position_meeting(mouse_x, mouse_y, id) && !viewing) {

        if (mouse_check_button_pressed(mb_left)) {

            viewing = true;

            rect = instance_create_layer(0, 0, "blackbox", drawrectangle);
            rect.target = id;

            current = instance_create_layer(200, room_height/2, "showObj", object_index);
        }

    } 
    else if (viewing && !instance_exists(rect)) {

        viewing = false;

        if (instance_exists(current)) {
            instance_destroy(current);
        }
    }
}
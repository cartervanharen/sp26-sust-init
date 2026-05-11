draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_colour(c_black);
draw_set_alpha(1);

if (spawn) {

    draw_rectangle(0, 0, room_width, room_height, false);

    var btn1 = instance_create_layer(room_width / 2, room_height / 3, "top", gotoMap);
    var btn2 = instance_create_layer(room_width / 2, room_height * 2 / 3, "top", keepPlaying);

    btn1.image_xscale = 0.8;
    btn1.image_yscale = 0.8;

    btn2.image_xscale = 0.8;
    btn2.image_yscale = 0.8;

    spawn = false;
}
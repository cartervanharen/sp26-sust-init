var clicked = mouse_check_button_pressed(mb_left);

var left   = x - sprite_width / 2;
var right  = x + sprite_width / 2;
var top    = y - sprite_height / 2;
var bottom = y + sprite_height / 2;

if (position_meeting(mouse_x, mouse_y, self)) {

    draw_set_alpha(1);
    draw_set_color(#dddddd);
    draw_roundrect(left, top, right, bottom, false);

    draw_set_color(c_black);
    draw_set_font(font);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(x, y, "Continue");

    if (clicked) {
        instance_destroy(pause);
        instance_destroy(gotoMap);
        global.pause = false;
        instance_destroy(keepPlaying);
    }

} else {

    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_roundrect(left, top, right, bottom, false);

    draw_set_color(c_black);
    draw_set_font(font);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(x, y, "Continue");
}
draw_set_alpha(.5)
draw_set_colour(c_black)
draw_rectangle(0,0,1280,960,false)
draw_set_halign(fa_center)
draw_set_valign(fa_top)

draw_set_alpha(1)

// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, 0, global.buildingdesc,100,1000);
draw_text_ext(room_width/2 + 1, 0, global.buildingdesc,100,1000);
draw_text_ext(room_width/2, 0-1, global.buildingdesc,100,1000);
draw_text_ext(room_width/2, 0+1, global.buildingdesc,100,1000);

// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width/2, 0, global.buildingdesc,100,1000);
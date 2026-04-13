draw_set_halign(fa_center)
draw_set_valign(fa_top)

draw_set_alpha(1)
text = "Here are the items you got incorrect, click on them to see where they should go or press space to continue"
// outline (white)
draw_set_color(c_white);
draw_text_ext(room_width/2 - 1, 0, text,100,1000);
draw_text_ext(room_width/2 + 1, 0, text,100,1000);
draw_text_ext(room_width/2, 0-1, text,100,1000);
draw_text_ext(room_width/2, 0+1, text,100,1000);

// main text (purple)
draw_set_color(#510c76);
draw_text_ext(room_width/2, 0, text,100,1000);


cols = 3;             
spacing_x = 400;      
spacing_y = 200;      
start_x = 300;        
start_y = 400;

for (var i = 0; i < array_length(global.badSort); i++) {

    var obj = global.badSort[i];

    var col = i mod cols;
    var row = i div cols;

    var x_pos = start_x + col * spacing_x;
    var y_pos = start_y + row * spacing_y;

    current = instance_create_layer(x_pos, y_pos, "mistakes", obj);
	current.image_xscale = .4
	current.image_yscale = .4
	
}

if(keyboard_check_pressed(vk_space)){
	global.badSort = []
	room_goto(Map)
}
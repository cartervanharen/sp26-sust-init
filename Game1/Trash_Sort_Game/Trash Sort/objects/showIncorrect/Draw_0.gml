draw_set_halign(fa_center)
draw_set_valign(fa_top)

draw_set_alpha(1)
text = "Here are the items you got incorrect, click on them to see where they should go or press space to continue"

// main text (white)
draw_set_color(c_white);
draw_text_ext(room_width/2, 0, text,100,1000);

//set up for a 3 x 3 grid of items at most, no building should have >9 items
cols = 3;             
spacing_x = 400;      
spacing_y = 175;      
start_x = 300;        
start_y = 350;

//for incorrect item, put it on screen
for (var i = 0; i < array_length(global.badSort); i++) {

    var obj = global.badSort[i];

    var col = i mod cols;
    var row = i div cols;

    var x_pos = start_x + col * spacing_x;
    var y_pos = start_y + row * spacing_y;
	
	//draw object scaled down
    current = instance_create_layer(x_pos, y_pos, "mistakes", obj);
	current.image_xscale = .5
	current.image_yscale = .5
	
}

//if space is clicked, leave the item screen
if(timer == 0 && keyboard_check_pressed(vk_space) && global.showing == noone){
	global.badSort = []
	room_goto(Map)
}
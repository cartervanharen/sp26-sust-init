if(!global.hasSpecial){
	
	lable_x = 320
	lable_y = 100

	row_1 = lable_y+100
	row_2 = row_1 + 320
	row_3 = row_2+ 320


	column_1 = lable_x 
	column_2 = column_1 + 360
	column_3 = column_2 + 360
	column_4 = column_3 + 360
	




}else{
	//for trash lables: trash = 160, rec= 480, org = 800, spec = 1120
	lable_x = 160
	lable_y = 100

	row_1 = lable_y+320
	row_2 = row_1+ 320
	row_3 = row_2+ 320


	column_1 = lable_x
	column_2 = column_1 + 320
	column_3 = column_2 + 320
	

	
}


//give building info
draw_set_halign(fa_center)
draw_set_valign(fa_top)
if(current = 1){
	draw_set_alpha(.5)
	draw_set_colour(c_black)
	draw_rectangle(0,0,1280,960,false)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	// main text (purple)
	draw_set_alpha(1)
	draw_set_color(c_white);
	draw_text_ext(room_width/2, room_height/4, global.buildingdesc,100,1000);

//if no speical items, show usings these spacings
}else if (current = 2 and !global.hasSpecial){
	draw_set_alpha(.5)
	draw_set_colour(c_black)
	draw_rectangle(0,0,1280,960,false)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	

	instance_create_layer(lable_x, lable_y, "gamehigh", otrash)
	instance_create_layer(lable_x+360, lable_y, "gamehigh", orecycle)
	instance_create_layer(lable_x+720, lable_y, "gamehigh", oorg)

	//trash

	drawing = instance_create_layer(column_1,row_1 ,"gamehigh", global.dropthese[0])
	drawing.image_xscale = .75
	drawing.image_yscale = .75
	drawing = instance_create_layer(column_1,row_2 ,"gamehigh", global.dropthese[1])
	drawing.image_xscale = .75
	drawing.image_yscale = .75
	drawing = instance_create_layer(column_1,row_3, "gamehigh", global.dropthese[2])
	drawing.image_xscale = .75
	drawing.image_yscale = .75
	//recycle
	drawing = instance_create_layer(column_2 , row_1, "gamehigh", global.dropthese[3])
	drawing.image_xscale = .75
	drawing.image_yscale = .75
	drawing = instance_create_layer(column_2 ,row_2, "gamehigh", global.dropthese[4])
	drawing.image_xscale = .75
	drawing.image_yscale = .75
	drawing = instance_create_layer(column_2 ,row_3, "gamehigh", global.dropthese[5])
	drawing.image_xscale = .75
	drawing.image_yscale = .75

	//org
	drawing = instance_create_layer(column_3, row_1, "gamehigh", global.dropthese[6])
	drawing.image_xscale = .75
	drawing.image_yscale = .75
	drawing = instance_create_layer(column_3 ,row_2, "gamehigh", global.dropthese[7])
	drawing.image_xscale = .75
	drawing.image_yscale = .75
	drawing = instance_create_layer(column_3 ,row_3, "gamehigh", global.dropthese[8])
	drawing.image_xscale = .75
	drawing.image_yscale = .75
	
//if it has special items, draw it based on this spacing
}else if (current = 2 and global.hasSpecial){
		draw_set_alpha(.5)
		draw_set_colour(c_black)
		draw_rectangle(0,0,1280,960,false)
		draw_set_halign(fa_center)
		draw_set_valign(fa_top)
		
		//tell player about special recycling and about MHC
		if(global.specRecinfo){
			draw_set_alpha(1)
			var txt = "Some items have special ways to be recycled. Bring certain times to the campus store in Murray-Herrick Center to recycle\n (CLICK SPACE TO CONTINUE)";
			bin = instance_create_layer(640,960,"gamehigh",sBin)
			bin.image_xscale = .75
			bin.image_yscale = .75

			// main text (white)
			draw_set_color(c_white);
			draw_text_ext(room_width/2, 50, txt,125,1000);
			
		}else{	
			draw_set_halign(fa_center)
			draw_set_valign(fa_top)
			if(instance_exists(sBin)){
				instance_destroy(sBin)
			}
			instance_create_layer(lable_x, lable_y+160, "gamehigh", otrash)
			instance_create_layer(lable_x+320, lable_y+160, "gamehigh", orecycle)
			instance_create_layer(lable_x+640, lable_y+160, "gamehigh", oorg)
			instance_create_layer(lable_x+960, lable_y+160, "gamehigh", osprecycle)

			//trash
			drawing = instance_create_layer(column_1 ,row_1, "gamehigh", global.dropthese[0])
			drawing.image_xscale = .75
			drawing.image_yscale = .75
			drawing =instance_create_layer(column_1 , row_2,"gamehigh", global.dropthese[1])
			drawing.image_xscale = .75
			drawing.image_yscale = .75

			//recycle
			drawing =instance_create_layer(column_2 ,row_1, "gamehigh", global.dropthese[2])
			drawing.image_xscale = .75
			drawing.image_yscale = .75
			drawing =instance_create_layer(column_2 , row_2,"gamehigh", global.dropthese[3])
			drawing.image_xscale = .75
			drawing.image_yscale = .75


			//org
			drawing =instance_create_layer(column_3 ,row_1, "gamehigh", global.dropthese[4])
			drawing.image_xscale = .75
			drawing.image_yscale = .75
			drawing =instance_create_layer(column_3 ,row_2, "gamehigh", global.dropthese[5])
			drawing.image_xscale = .75
			drawing.image_yscale = .75

			//special recycle

			drawing =instance_create_layer(column_3+320 , row_1,"gamehigh", global.dropthese[6])
			drawing.image_xscale = .75
			drawing.image_yscale = .75
			drawing =instance_create_layer(column_3+320,row_2, "gamehigh", global.dropthese[7])
			drawing.image_xscale = .75
			drawing.image_yscale = .75
		}

//fall back to draw semi visible black box
}else{
	draw_set_alpha(.5)
	draw_set_colour(c_black)
	draw_rectangle(0,0,1280,960,false)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
}

if(current = 1){
draw_set_alpha(.5)
draw_set_colour(#52C415)
draw_rectangle(0,0,1280,960,false)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
// main text (purple)
draw_set_alpha(1)
draw_set_color(#510c76);
draw_text_ext(room_width/2, room_height/4, global.buildingdesc,100,1000);

}else if (current = 2 and !global.hasSpecial){
	draw_set_alpha(.5)
draw_set_colour(#52C415)
draw_rectangle(0,0,1280,960,false)
draw_set_halign(fa_center)
draw_set_valign(fa_top)

instance_create_layer(lable_x, lable_y, "gamehigh", otrash)
instance_create_layer(lable_x+360, lable_y, "gamehigh", orecycle)
instance_create_layer(lable_x+720, lable_y, "gamehigh", oorg)

//trash

drawing = instance_create_layer(column_1,row_1 ,"gamehigh", global.dropthese[0])
drawing.image_xscale = .4
drawing.image_yscale = .4
drawing = instance_create_layer(column_1,row_2 ,"gamehigh", global.dropthese[1])
drawing.image_xscale = .4
drawing.image_yscale = .4
drawing = instance_create_layer(column_1,row_3, "gamehigh", global.dropthese[2])
drawing.image_xscale = .4
drawing.image_yscale = .4
//recycle
drawing = instance_create_layer(column_2 , row_1, "gamehigh", global.dropthese[3])
drawing.image_xscale = .4
drawing.image_yscale = .4
drawing = instance_create_layer(column_2 ,row_2, "gamehigh", global.dropthese[4])
drawing.image_xscale = .4
drawing.image_yscale = .4
drawing = instance_create_layer(column_2 ,row_3, "gamehigh", global.dropthese[5])
drawing.image_xscale = .4
drawing.image_yscale = .4

//org
drawing = instance_create_layer(column_3, row_1, "gamehigh", global.dropthese[6])
drawing.image_xscale = .4
drawing.image_yscale = .4
drawing = instance_create_layer(column_3 ,row_2, "gamehigh", global.dropthese[7])
drawing.image_xscale = .4
drawing.image_yscale = .4
drawing = instance_create_layer(column_3 ,row_3, "gamehigh", global.dropthese[8])
drawing.image_xscale = .4
drawing.image_yscale = .4
	
	

}else if (current = 2 and global.hasSpecial){
		draw_set_alpha(.5)
draw_set_colour(#52C415)
draw_rectangle(0,0,1280,960,false)
draw_set_halign(fa_center)
draw_set_valign(fa_top)

instance_create_layer(lable_x-160, lable_y+160, "gamehigh", otrash)
instance_create_layer(lable_x+160, lable_y+160, "gamehigh", orecycle)
instance_create_layer(lable_x+480, lable_y+160, "gamehigh", oorg)
instance_create_layer(lable_x+800, lable_y+160, "gamehigh", osprecycle)

//trash
drawing = instance_create_layer(column_1-160 ,row_1+240, "gamehigh", global.dropthese[0])
drawing.image_xscale = .5
drawing.image_yscale = .5
drawing =instance_create_layer(column_1 -160 , row_2+240,"gamehigh", global.dropthese[1])
drawing.image_xscale = .5
drawing.image_yscale = .5

//recycle
drawing =instance_create_layer(column_2 -200 ,row_1+240, "gamehigh", global.dropthese[2])
drawing.image_xscale = .5
drawing.image_yscale = .5
drawing =instance_create_layer(column_2-200 , row_2+240,"gamehigh", global.dropthese[3])
drawing.image_xscale = .5
drawing.image_yscale = .5


//org
drawing =instance_create_layer(column_3-200 ,row_1+240, "gamehigh", global.dropthese[4])
drawing.image_xscale = .5
drawing.image_yscale = .5
drawing =instance_create_layer(column_3-200 ,row_2+240, "gamehigh", global.dropthese[5])
drawing.image_xscale = .5
drawing.image_yscale = .5

//special recycle

drawing =instance_create_layer(column_3 +120 , row_1+240,"gamehigh", global.dropthese[6])
drawing.image_xscale = .5
drawing.image_yscale = .5
drawing =instance_create_layer(column_3 +120,row_2+240, "gamehigh", global.dropthese[7])
drawing.image_xscale = .5
drawing.image_yscale = .5
	
}else{
	draw_set_alpha(.5)
	draw_set_colour(#52C415)
	draw_rectangle(0,0,1280,960,false)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
}
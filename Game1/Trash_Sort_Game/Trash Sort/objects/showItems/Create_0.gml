timer = 1
alarm[0] = 60
current = 1

scalar = .4

if(global.hasSpecial){
	
		//for trash lables: trash = 160, rec= 480, org = 800, spec = 1120
lable_x = 0
lable_y = 320

row_1 = lable_y+320
row_2 = row_1+ 320
row_3 = row_2+ 320


column_1 = lable_x
column_2 = column_1 + 320
column_3 = column_2 + 320



}else{
	
lable_x = 320
lable_y = 100

row_1 = lable_y+100
row_2 = row_1 + 320
row_3 = row_2+ 320


column_1 = lable_x 
column_2 = column_1 + 360
column_3 = column_2 + 360

	
}
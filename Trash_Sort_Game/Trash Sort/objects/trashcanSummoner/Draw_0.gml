//if game just started, spawn one trash can at OEC
if(global.tutoral and instance_number(tcParent)<1){
	curr = instance_create_layer(1161,294,"trashcans",full3)
	curr.image_xscale =2
	curr.image_yscale =2
	
}


//Will grab all the fullness for each building and draw correct trashcan
//only will create if it doesnt exist

if(instance_number(tcParent) <9){
	
}
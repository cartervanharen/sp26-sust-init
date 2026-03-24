		
//Will grab all the fullness for each building and draw correct trashcan
//only will create if it doesnt exist
if(instance_number(tcParent) <9){
	//SCC
	curr = instance_create_layer(99,834,"trashcans",trashcanArr[global.fullness[0]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//OSS
	curr = instance_create_layer(267,826,"trashcans",trashcanArr[global.fullness[1]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//OWS
	curr = instance_create_layer(367,906,"trashcans",trashcanArr[global.fullness[2]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	
	//ASC
	curr = instance_create_layer(653,480,"trashcans",trashcanArr[global.fullness[3]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//Frey
	curr = instance_create_layer(1152,160,"trashcans",trashcanArr[global.fullness[4]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//MCH
	curr = instance_create_layer(1172,819,"trashcans",trashcanArr[global.fullness[5]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//JRC
	curr = instance_create_layer(1058,520,"trashcans",trashcanArr[global.fullness[6]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//ARC
	curr = instance_create_layer(837,270,"trashcans",trashcanArr[global.fullness[7]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//OEC
	curr = instance_create_layer(1161,294,"trashcans",trashcanArr[global.fullness[8]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//Library (1120,448)
	curr = instance_create_layer(1120,448,"trashcans",trashcanArr[global.fullness[9]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	
}

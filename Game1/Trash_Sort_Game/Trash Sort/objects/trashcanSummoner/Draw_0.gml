		
//Will grab all the fullness for each building and draw correct trashcan
//only will create if it doesnt exist
if(instance_number(tcParent) <7){
	//ASC
	curr = instance_create_layer(160,544,"trashcans",trashcanArr[global.fullness[0]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//Frey
	curr = instance_create_layer(1120,85,"trashcans",trashcanArr[global.fullness[1]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//MUR
	curr = instance_create_layer(896,256,"trashcans",trashcanArr[global.fullness[2]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	
	//JRC
	curr = instance_create_layer(896,640,"trashcans",trashcanArr[global.fullness[3]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//OEC
	curr = instance_create_layer(1120,256,"trashcans",trashcanArr[global.fullness[4]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	//Library
	curr = instance_create_layer(1120,512,"trashcans",trashcanArr[global.fullness[5]])
	curr.image_xscale =2
	curr.image_yscale =2
	
	
}

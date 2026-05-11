//if the tutorial hasnt been played, delete all other cans but OEC 
if(global.tutorial){
	
	instance_destroy(tcParent)
	curr = instance_create_layer(1120,256,"trashcans",full0)
	curr.image_xscale =2
	curr.image_yscale =2

}
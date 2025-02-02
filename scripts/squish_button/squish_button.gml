// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function squish_button(){
	
	if mouse_sobre{

		if!(cd){
			image_xscale = irandom_range(getxscale - 1.5,getxscale + 1.5)
			image_yscale = irandom_range(getxscale - 1.5,getxscale + 1.5)
			cd = true
		}
	
	}
	if(!(mouse_sobre) and cd == true){
		alarm[0] = 1

	}

	image_xscale = lerp(image_xscale,getxscale,0.1)
	image_yscale = lerp(image_yscale,getyscale,0.1)
}
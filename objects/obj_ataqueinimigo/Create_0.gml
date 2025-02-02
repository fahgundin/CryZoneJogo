image_index = 0
if(x > obj_crybaby.x){
	atqrnd = irandom_range(-10,30)
	image_angle = point_direction(x, y, obj_crybaby.x, obj_crybaby.y + atqrnd)
}

if(x < obj_crybaby.x){
	atqrnd = irandom_range(-30,10)
	image_angle = point_direction(x, y, obj_crybaby.x, obj_crybaby.y + atqrnd)
}






cor = make_colour_rgb(255, cordajulinha, cordajulinha);

if (giro <1080){
	giro += 45
}
if(giro !=1080){
	image_angle = giro
	dir = giro
} else{
		if ptfixx == x and ptfixy == y{ 
			image_angle = point_direction(x, y, obj_follow.x, obj_follow.y)
			dir = point_direction(x, y, obj_follow.x, obj_follow.y)
		}
	}

if (cordajulinha >0) and (giro == 1080){
	cordajulinha -=2;
} 

if(cordajulinha == 1){
	instance_create_layer(x,y,"HUD",obj_flechaatingido)
	move_towards_point(obj_follow.x,obj_follow.y,10)
}



switch(global.pause){
	case false:
		y = y + sin(timer * 0.03) * 0.4

		timer ++;

		image_xscale = 0.7
		image_yscale = 0.7

		repeat (cooldown > 0){
			image_alpha = opacidadep; 
		if (cooldown % 10 == 0){
			opacidadep = 0.5;
		} else {
			opacidadep = 1;
		}
		}

		if (place_meeting(x,y,obj_ataque)) and cooldown = 0{
			cooldown = 70;
			vspd -= 2
			vidaboss -= 2
			} 
	
		if (place_meeting(x,y,obj_soco)) and cooldown = 0{
			cooldown = 70;
			vspd -= 2
			vidaboss -= 1
		} 
	
	
			if (place_meeting(x,y,obj_ataque3)) and cooldown = 0{
				cooldown = 70;
	
			} 
	
			if (cooldown > 0){
			cooldown -= 1
			}
	


		if place_meeting(x,y,obj_flecha) and cooldown = 0 and global.danoflecha > 0{
			cooldown = 35
			instance_create_layer(obj_flecha.x,obj_flecha.y,"HUD",obj_flechaatingido)
			instance_destroy(obj_flecha);
			spd = 0.01
			vidaboss -= global.danoflecha
		}

		if (vidaboss <=0){
			image_alpha = 0;
			instance_destroy(obj_maodireita)
			instance_destroy(obj_maoesquerda)
			show_message("you killed your nightmare's monster, congratulations")
			game_end()
		}
		break;
	case true:
		
		break;

}
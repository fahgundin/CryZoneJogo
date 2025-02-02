

switch(global.pause){
	case false:
		#region // dano recebido
		if (hspd != 0){
			sprite_index = spr_inimigowalk
		} else {
			sprite_index = spr_inimigo
		}

		repeat (cooldown > 0){
			image_alpha = opacidadep; 
			if (cooldown % 10 == 0){
				image_alpha = 0.5;
		} else {
			image_alpha = 1
		}
		}

		if (vidainimigo <= 0){
			instance_destroy();
		}
		if (place_meeting(x,y,obj_ataque)) and cooldown = 0{
			vidainimigo -= global.danoataque
			cooldown = 70;
			vspd -= 2
			} 
	
		if (place_meeting(x,y,obj_soco)) and cooldown = 0{
			vidainimigo -= 2
			cooldown = 70;
			vspd -= 2
		} 
	
	
			if (place_meeting(x,y,obj_ataque3)) and cooldown = 0{
				vidainimigo -= global.danoataque
				cooldown = 70;
	
			} 
	
			if (cooldown > 0){
			cooldown -= 1
			}
	


		if place_meeting(x,y,obj_flecha) and cooldown = 0 and global.danoflecha > 0{
			cooldown = 35
			vidainimigo -= global.danoflecha;
			instance_create_layer(obj_flecha.x,obj_flecha.y,"HUD",obj_flechaatingido)
			instance_destroy(obj_flecha);
			spd = 0.01
		}



		if(spd <1.5){
			spd = spd + 0.02
		}
	
		vspd = vspd + grv
	
		#endregion



		#region // STATE MACHINE

		if distance_to_object(obj_crybaby) < 200 and distance_to_object(obj_crybaby) >= 5 and not collision_line(x,y,obj_crybaby.x,obj_crybaby.y,obj_wall,false, false){ // CORRER ATRÁS
			var _vir = sign(obj_crybaby.x - x);
			hspd = _vir * spd
			chcdwn = 50

		} else {
			hspd = 0

		}

		if (chcdwn = 0) and distance_to_object(obj_crybaby) > 5{ //  VOLTAR
		    var _vir = sign(local_savox - x);
			hspd = _vir * 0.5

		}


		if (hspd ==0) and distance_to_object(obj_crybaby) <=5 and not (instance_exists(obj_ataqueinimigo)) and (global.cooldownkb == 0) and cd = true{
			cd = false
			instance_create_layer(x,y,"ataque",obj_ataqueinimigo);
			cooldownataque =  50
			alarm[0] = room_speed * 1.50
		}
		if (cooldownataque != 0) and (instance_exists(obj_ataqueinimigo)){ sprite_index = spr_inimigoattack }


		if (cooldownataque > 0){
			cooldownataque -= 1;
		}

		if (chcdwn > 0){ // cooldown para voltar
			chcdwn -= 1
		}

		if(y > obj_crybaby.y) and (x < obj_crybaby.x + 5) and (x > obj_crybaby.x - 5){
			hspd = 0
		}

		#endregion



		#region
		// horizontal

		if place_meeting(x+hspd,y,obj_wall){
		 while(!place_meeting(x+sign(hspd),y,obj_wall)){
		  x = x + sign(hspd)
		 }
		 hspd=0
		}

		x = x + hspd


		// vertical

		if place_meeting(x,y+vspd,obj_wall){
		 while(!place_meeting(x,y+sign(vspd),obj_wall)){
		  y = y + sign(vspd)
		 }
		 vspd=0
		}


		y = y + vspd

		if (hspd!= 0) image_xscale = sign(hspd)

		#endregion
		break;
	case true:
	
		break;
}
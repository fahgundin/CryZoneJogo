
switch(global.pause){

	case false:
		if not (instance_exists(obj_colisionlat)){instance_create_layer(x,y,"crybaby",obj_colisionlat)} 

		if not (instance_exists(obj_textbox)){
			controles() // SCRIPT CONTROLES
		}else{
			hspd =0
		}
		colisao() // colisao
		vspd = vspd + grv;
		
		if(global.vida > 0) and not instance_exists(obj_tree){
			

			if (hspd > 0 ) and deit = true{
				ini_open("save.txt")
				armaselec[0] = ini_read_string("Jogador","arma1",0)
				armaselec[1] = ini_read_string("Jogador","arma2",0)
				ini_write_real("Jogador","vida",global.vida)
	
			ini_close()
			image_angle = 0 vspd -= 5 deit = false}
	

		#region // MOVIMENTAÇÃO

		var move = key_direita - key_esquerda;

		

		if (hspd != 0) and not instance_exists(obj_ataque) and not instance_exists(obj_ataque3) image_xscale = sign(hspd);

		#endregion
		#region // COLISAO
		 // SCRIPT COLISAO
		if place_meeting(x,y+vspd,obj_plat) and key_baixo{ // COOLDOWN DA PLATAFORMA
			platcooldown = 30
		}
		if platcooldown >= 1{ 
			platcooldown -= 1
		}

		#endregion
		#region // SPRITES

		if (hspd > 0 or hspd < 0) sprite_index = spr_crybabyandando

		if (hspd = 0) sprite_index = spr_crybaby

		if (key_baixo) and hspd = 0{
			sprite_index = spr_crybabybaixo
		}

		#endregion
		#region // ATAQUES

		ataques()

		#endregion
		#region // PULO

		if pulo > 0 and key_pulo and (stamina > 24){
			stamina -=25
			vspd -= 9;
	

			instance_create_layer(obj_crybaby.x,obj_crybaby.y,"dust",obj_jump_dust);
			pulo -= 1;
			if vspd < -10{
				vspd = -10;
			}
		}

		if (place_meeting(x,y+1,obj_wall)) or (place_meeting(x,y+1,obj_plat)){
		pulo = 1;
		}

		#endregion
		#region // CORRER / STAMINA

		if (key_correr) and stamina > 0 and (hspd !=0) and (place_meeting(x,y+vspd,obj_wall) or place_meeting(x,y+vspd,obj_plat)){
			stamina -=1
			hspd = move * spdrun;
			image_speed=1.5
		} else {
		hspd = move * spd;
		image_speed=1
		}

		if !(key_correr){
		stamina += 0.35
		}

		if (stamina > 150){
			stamina = 150
			}

		if (stamina < 0) {
			stamina = 0
		}

		#endregion

		knockback();

		amas();

		arco();

		intangivel();

		global.stamina = stamina
		global.staminax = staminax 
		if (stamina < 150) {
			instance_create_layer(x,y,"HUD",obj_stamina)
		}

		if (armaselec[arma] = "arco") and (global.flechaspd != 0){
			instance_create_layer(x,y,"HUD",objflechaspd)
		}

		} else { image_angle = 90 
	
			hspd = 0
			}
			if (keyboard_check_pressed(ord("R"))){
				game_restart()
			}
		break;
	case true:
		
		break;
}

function HUD(){
	
	if gamepad_get_description(global.controle) == "Sony Dualshock 4"{
		draw_sprite(spr_pss, 1 , 1184,50)
		draw_sprite(spr_psx, 1 , 1220,86)
	}
	show_debug_message(gamepad_get_description(global.controle))
	draw_sprite(spr_armahud,1,8,8)

	draw_sprite(spr_controles,1,1220,50)
	
	if armaselec[arma] = "espada"{

		draw_sprite(spr_swrdhud2, 1 , 64,64)

	} 
	if armaselec[arma] = "arco"{

		draw_sprite(spr_tbwhud2, 1 , 64,64)

	}

	draw_set_font(fnt_flecha);
	
	if(instance_exists(obj_pad)){
		draw_sprite(spr_pad, 1 , 125, 650)
		if (armaselec[0] = "espada"){
			draw_sprite(spr_swrdhudarma, 1 , 125, 614)
		} 
		if (armaselec[1] = "arco"){
			draw_sprite(spr_arcoarma, 1 , 125, 614)
		} 
		
	}
}
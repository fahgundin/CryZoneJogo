// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function amas(){
	


if key_arma1{
arma = 0
}

if key_arma2{
arma = 1
}

if gamepad_button_check_pressed(global.controle, gp_padl){
	instance_create_layer(x,y,"HUD",obj_pad);
	}
if instance_exists(obj_pad){
	if gamepad_button_check_pressed(global.controle, gp_padu) and (armaselec[arma] == "espada"){
		armaselec[arma] = "espada"
		instance_destroy(obj_pad);
	}
	if gamepad_button_check_pressed(global.controle, gp_padr) and (armaselec[arma] == "arco"){
		armaselec[arma] = "arco"
		instance_destroy(obj_pad);
}
}
}
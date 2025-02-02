// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function arco(){
if (key_segurar) and not(global.flechaspd > 16) and (cooldownflecha = 0)
{
global.flechaspd += 0.1;
} else {
	global.flechaspd -= 0.5
}


if (armaselec[arma] = "arco") and (mouse_check_button(mb_right)) or ((gamepad_axis_value(global.controle, gp_axisrh)) != 0 ){
instance_create_layer(mouse_x,mouse_y,"HUD",obj_alvo)
}

if (key_segurar) and (armaselec[arma] = "arco") and (cooldownflecha <= 0) and (key_ataque) {
instance_create_depth(obj_crybaby.x,obj_crybaby.y, -1, obj_flecha)
cooldownflecha = 16
flechaspd = 16;
audio_play_sound(snd_flecha,0,0);
}

cooldownflecha -= 1;

if (cooldownflecha < 0) {
	cooldownflecha = 0
}

if (flechaspd > 16){
	global.flechaspd = 16
	}

if (global.flechaspd < 0) {
	global.flechaspd = 0
}


if armaselec[arma] = "arco" and not instance_exists(obj_arco){

instance_create_layer(obj_crybaby.x,obj_crybaby.y,"armas",obj_arco);

}

if armaselec[arma] = "espada"{
instance_destroy(obj_arco);
}

}
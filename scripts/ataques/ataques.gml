// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ataques(){

if (stamina > 49) and ((place_meeting(x,y+vspd,obj_wall) or place_meeting(x,y+vspd,obj_plat))) and (key_ataque) and cooldownataque = 0 and (armaselec[arma] = "espada"){
	stamina -=35
	cooldownataque =  irandom_range(35,50);
	instance_create_layer(obj_crybaby.x,obj_crybaby.y,"ataque",obj_ataque);
	audio_play_sound(snd_espada,0,0);
	cooldownsegatq = true
}

if (cooldownataque > 0){
cooldownataque -= 1;
}

if (stamina > 49) and ((place_meeting(x,y+vspd,obj_wall) or place_meeting(x,y+vspd,obj_plat))) and (key_ataque) and (armaselec[arma] == "espada") and not instance_exists(obj_ataque) {
	instance_create_layer(obj_crybaby.x,obj_crybaby.y,"ataque",obj_ataque3);
	audio_play_sound(snd_espada,0,0);
	cooldownsegatq = false
}
if (stamina > 10) and ((place_meeting(x,y+vspd,obj_wall) or place_meeting(x,y+vspd,obj_plat))) and (key_ataque) and cooldownataque = 0 and (armaselec[arma] = "soco"){
	stamina -=10
	cooldownataque =  irandom_range(35,50);
	instance_create_layer(obj_crybaby.x,obj_crybaby.y,"ataque",obj_soco);
}

}
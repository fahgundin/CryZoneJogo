// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function knockback(){
if (hspd != 0) {
	knockback = sign(hspd);}

if (knockback > 0) and place_meeting(x+1,y, obj_ataqueinimigo) and (global.cooldownkb <= 0) and distance_to_object(obj_wall.y) > 7{
	vspd -= 3;
	global.cooldownkb = 60;
	global.vida -=1;
}

if (knockback < 0) and place_meeting(x+1,y, obj_ataqueinimigo) and (global.cooldownkb <= 0) and distance_to_object(obj_wall.y) > 7{
	vspd -= 3;
	global.cooldownkb = 60;
	global.vida -=1;
}

if (knockback > 0) and place_meeting(x+1,y, obj_lanca) and (global.cooldownkb <= 0) and distance_to_object(obj_wall.y) > 7 and (obj_lanca.cordajulinha <= 0){
	vspd -= 3;
	global.cooldownkb = 60;
	global.vida -=1;
}

if (knockback < 0) and place_meeting(x+1,y, obj_lanca) and (global.cooldownkb <= 0) and distance_to_object(obj_wall.y) > 7 and (obj_lanca.cordajulinha <=0){
	vspd -= 3;
	global.cooldownkb = 60;
	global.vida -=1;
}

if (knockback > 0) and place_meeting(x+1,y, obj_maodireita) and (global.cooldownkb <= 0) and distance_to_object(obj_wall.y) > 7 {
	vspd -= 3;
	global.cooldownkb = 60;
	global.vida -=1;
}

if (knockback < 0) and place_meeting(x+1,y, obj_maoesquerda) and (global.cooldownkb <= 0) and distance_to_object(obj_wall.y) > 7{
	vspd -= 3;
	global.cooldownkb = 60;
	global.vida -=1;
}


if (global.cooldownkb > 0){
global.cooldownkb -= 1
}

if (knockback > 0) and place_meeting(x+1,y, obj_maodireita) and (global.cooldownkb <= 0) and distance_to_object(obj_wall.y) > 7{
	spd = 0
	global.cooldownkb = 60;
	global.vida -=1;
}

if (knockback < 0) and place_meeting(x+1,y, obj_maoesquerda) and (global.cooldownkb <= 0) and distance_to_object(obj_wall.y) > 7{
	spd = 0
	global.cooldownkb = 60;
	global.vida -=1;
}

if (spd < 2){
	spd += 0.07
}

}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function intangivel(){
repeat (global.cooldownkb > 0){
	image_alpha = opacidadep; 
if (global.cooldownkb % 10 == 0){
	opacidadep = 0.5;
} else {
	opacidadep = 1;
}
}
}
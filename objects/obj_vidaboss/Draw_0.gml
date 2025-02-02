
if (instance_exists(obj_hannya)){
	draw_sprite(BossEmpy,0,260, 40)
	draw_sprite_ext(BossFull,0,260, 40,
	max(0,obj_hannya.vidaboss/obj_hannya.vidabossmax),1,0,c_white,1);
}else{instance_destroy()}
if (instance_exists(obj_crybaby)){
	draw_sprite(LifeEmpty,0,1, 1)
	draw_sprite_ext(LifeFull,0,1, 1,
	max(0,global.vida/global.vidamax),1,0,c_white,1);
}
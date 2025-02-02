
if obj_crybaby.stamina < obj_crybaby.staminax{

	draw_sprite(StaminaEmpty,0,x, y)
	draw_sprite_ext(StaminaFull,0,x, y,
	max(0,obj_crybaby.stamina/obj_crybaby.staminax),1,0,c_white,1);

}

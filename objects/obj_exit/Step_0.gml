mouse_click = mouse_check_button_pressed(mb_left);
mouse_sobre = position_meeting(mouse_x, mouse_y, obj_exit)
mouse_sem = not position_meeting(mouse_x, mouse_y, obj_exit)




if (mouse_click) and (mouse_sobre){
	game_end()
}




if mouse_sobre{
	sprite_index = spr_bt2rainbow
	
} else {
	sprite_index = spr_botao2
}



script_execute(squish_button)

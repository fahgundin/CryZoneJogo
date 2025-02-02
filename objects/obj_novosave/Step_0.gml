var mouse_click = mouse_check_button_pressed(mb_left);
var mouse_sobre = position_meeting(mouse_x, mouse_y, obj_connect)
var mouse_sem = not position_meeting(mouse_x, mouse_y, obj_connect)


if (mouse_click) and (mouse_sobre){
	room_goto(rm_01)
	
}


if mouse_sobre{
	sprite_index = spr_bt1rainbow
} else {
	sprite_index = spr_botao
}
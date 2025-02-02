mouse_click = mouse_check_button_pressed(mb_left);
mouse_sobre = position_meeting(mouse_x, mouse_y, obj_options)



if (mouse_click) and (mouse_sobre){
	room_goto(rm_options)
}


script_execute(squish_button)
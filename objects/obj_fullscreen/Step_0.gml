mouse_click = mouse_check_button_pressed(mb_left);
mouse_sobre = position_meeting(mouse_x, mouse_y, obj_fullscreen)



if (mouse_click) and (mouse_sobre){
	fullscreen = !fullscreen
}
window_set_fullscreen(fullscreen)

script_execute(squish_button)


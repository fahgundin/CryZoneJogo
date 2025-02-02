
if (mouse_check_button(mb_right)) and (instance_exists(obj_arco)){
	x = mouse_x
	y = mouse_y
	image_alpha = 1
} else {
	x = obj_crybaby.x
	y = obj_crybaby.y
	image_alpha = 0
}



if (gamepad_axis_value(global.controle, gp_axisrh)) != 0 or (gamepad_axis_value(global.controle, gp_axisrv)) != 0 {


x = obj_crybaby.x + 25 * gamepad_axis_value(global.controle, gp_axisrh)

y = obj_crybaby.y + 25 * gamepad_axis_value(global.controle, gp_axisrv)

image_alpha = 0


}





if gamepad_button_check(global.controle, gp_padl) and cooldown = 0{
			instance_destroy(obj_pad)
}

if cooldown >0{cooldown --;}
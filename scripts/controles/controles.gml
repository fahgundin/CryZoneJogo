
function controles(){

gamepad_set_axis_deadzone(global.controle, 0.25)
key_direita = keyboard_check(ord("D")) or gamepad_axis_value(global.controle, gp_axislh) > 0.25;
key_esquerda = keyboard_check(ord("A")) or gamepad_axis_value(global.controle, gp_axislh) < -0.25;
key_pulo = keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(global.controle, gp_face1)
key_correr = keyboard_check(vk_shift) or gamepad_button_check(global.controle, gp_face3);
key_arma1 = keyboard_check_pressed(ord("1"));
key_arma2 = keyboard_check_pressed(ord("2"));
key_ataque = mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(global.controle, gp_shoulderrb);
key_segurar = mouse_check_button(mb_right) or gamepad_button_check(global.controle, gp_shoulderlb);
key_baixo = keyboard_check(ord("S")) or gamepad_axis_value(global.controle, gp_axislv) > 0.25;
var numslots = gamepad_get_device_count();
for (var i = 0; i < numslots; i++){
	if(gamepad_is_connected(i)){
		global.controle = i;
	}
}
gamepad_get_description(i)



}


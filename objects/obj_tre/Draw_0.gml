if (global.vida <= 0){
	draw_set_color(c_black);
	draw_set_alpha(opacidade);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
}

if (global.vida <= 0){
	draw_set_alpha(opacidadet)
	draw_set_font(fnt_dano);
	draw_set_color(c_red);
	t = string_width("GAME OVER")
	f = string_height("GAME OVER")
	draw_text(obj_camera.x - t/2,obj_camera.y,"GAME OVER");
	if tf = true {
		draw_set_font(fnt_flecha)
		draw_set_color(c_white);
		t2 = string_width("PRESS 'R' TO RESTART")
		draw_text(obj_camera.x - t2/2,obj_camera.y + f/2 + 3,"PRESS 'R' TO RESTART");
	}
}




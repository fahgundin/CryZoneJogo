
percent = (leverx - leverxmin/leverxmax -leverxmin)/(leverxmax -leverxmin)
//MEU PROPRIO POINT IN RECTANGLE JA QUE ESSA JOSSA NAO FUNCIONA


if(mouse_x <= leverxmax and mouse_x > leverxmin) and my_own_pir and mouse_check_button(mb_left){
	push = true
	
}

audio_group_set_gain(audiogroup_musics,percent,1)


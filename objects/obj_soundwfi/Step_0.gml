
audio_group_load(audiogroup_musics)
if(instance_exists(obj_tree)){
			var opacidade = obj_tree.opacidadeo
		}else{
			opacidade = 0
		}

if!(audio_is_playing(snd_jungletheme)){
	snd = audio_play_sound(snd_jungletheme,0,1,0)
}
audio_sound_gain(snd,1 - opacidade ,0)
show_debug_message(audio_is_playing(snd_jungletheme))
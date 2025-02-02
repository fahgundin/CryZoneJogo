audio_group_load(audiogroup_musics)

switch(room){
	case menu:
		if !(audio_is_playing(snd_musicamenu)){
			audio_play_sound(snd_musicamenu, 0, true)
			audio_sound_pitch(snd_musicamenu, 0.8)
		}
		break;
	
	
	case rm_options:
		if !(audio_is_playing(snd_musicamenu)){
			audio_play_sound(snd_musicamenu, 0, true)
			audio_sound_pitch(snd_musicamenu, 0.8)
		}
		break;
	case intro:
		audio_pause_sound(snd_musicamenu)
		break;
	case rm_01:
	
		break;
	case rm_02:
		if!(instance_exists(obj_soundwfi)){
			instance_create_layer(x,y,"sound",obj_soundwfi)
		}
		break;
}
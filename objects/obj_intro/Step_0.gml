
if (audio_is_playing(snd_intro) == false) and stgame = false{
	audio_play_sound(snd_intro, 0, false)
	audio_sound_pitch(snd_intro, 0.8)
	stgame = true
}

if (audio_is_playing(snd_intro) == false) and stgame = true{
	room_goto(rm_01)
}
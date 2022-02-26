if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space){
	room_goto(dia01_cutscene);
	audio_play_sound(snd_start,1,0);
}